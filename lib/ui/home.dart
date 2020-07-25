import 'package:flutter/material.dart';

myapp() {
  var myIcon = Icon(Icons.music_note);
  var myEmailIcon = Icon(Icons.email);
  var myHomeIcon = Icon(Icons.home);
  var myAppBar = AppBar(
    title: Text("MyApp"),
    leading: myHomeIcon,
    actions: <Widget>[myEmailIcon, myIcon],
    backgroundColor: Colors.lightBlueAccent,
  );

  var myBody = Container(
      width: 300,
      height: 300,
      //color: Colors.grey,
      child: Text("Hello Flutter!!",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://raw.githubusercontent.com/Priyabanga/second_app/master/flutter.png")),
      ));
  var myhome = Scaffold(
    appBar: myAppBar,
    body: Center(child: myBody),
    backgroundColor: Colors.blueGrey.shade100,
  );
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
