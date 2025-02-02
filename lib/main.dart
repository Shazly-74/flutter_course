import 'package:flutter/material.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter day 2", style: TextStyle(color: Colors.amber)), leading: Icon(Icons.phone, color: Colors.amber), actions: [Icon(Icons.notification_add, color: Colors.amber,)],backgroundColor: Colors.black,),
        body: Container(
          child: Padding(padding: EdgeInsets.all(16), child:
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.network(height: 300, width: 300, 'https://img.freepik.com/premium-photo/sunflower-isolated-white-background-one-yellow-flower_92795-1664.jpg?semt=ais_hybrid'),
            SizedBox(height: 30),
            TextFormField(decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(),
            ),),
            SizedBox(height: 40),
            TextFormField(decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(),
            ),),
            SizedBox(height: 30),
            SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(), padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.amber), onPressed: null, child: Text("LOGIN", style: TextStyle(color: Colors.black)))),
            SizedBox(height: 20),

            TextButton(onPressed: null, child: Text("data regstier", style: TextStyle(color: Colors.blueAccent))),
            SizedBox(height: 30),
            TextButton(onPressed: null, child: Text("Forget password", style: TextStyle(color: Colors.blueAccent))),
          ],)),
        )
      )
    );
  }
}