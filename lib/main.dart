import 'package:flutter/material.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> chats = [
    {"name": "Ankur", "message": "Lets meet tomorrow", "time": "3:09 PM", "image": "assets/pic1.jpg", "online": true},
    {"name": "Stella", "message": "Hey What's up?", "time": "Wed", "image": "assets/pic2.jpeg", "online": true},
    {"name": "Rosy", "message": "Are you ready for the party...", "time": "Thu", "image": "assets/pic3.jpg", "online": true},
    {"name": "Ani", "message": "Let's go have some fun", "time": "Wed", "image": "assets/pic4.jpg", "online": false},
  ];

  final List<Map<String, dynamic>> stories = [
    {"name": "Ankur", "image": "assets/pic1.jpg", "online": true},
    {"name": "Stella", "image": "assets/pic2.jpeg", "online": true},
    {"name": "Rosy", "image": "assets/pic3.jpg", "online": true},
    {"name": "Ani", "image": "assets/pic4.jpg", "online": false},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.white,
            title: Text("Chats", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            actions: const [
              Icon(Icons.camera_alt, color: Colors.black,),
              Icon(Icons.edit, color: Colors.black,)
            ],),
          body: Column(children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child:TextField(decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide.none)
                ),)
            ),
            Container(height: 100, child: ListView.builder(scrollDirection: Axis.horizontal, itemCount: stories.length+1 , itemBuilder: (context, index) {
              if(index == 0) {
                return Column(children: [
                  CircleAvatar(radius: 30, backgroundColor: Colors.grey, child: Icon(Icons.add, size:25, color: Colors.black,),),
                  SizedBox(height: 5),
                  Text("Your story", style: TextStyle(fontSize: 12))
                ],);
              }
              return Padding(padding: EdgeInsets.symmetric(horizontal: 8), child: Column(children: [
                CircleAvatar(radius: 30, backgroundImage: AssetImage(stories[index]["image"],)),
                SizedBox(height: 5),
                Text(stories[index]["name"], style: TextStyle(fontSize: 12),),
              ],),);
            }),),
            Expanded(child: ListView.builder(itemCount: chats.length, itemBuilder: (context, index){
              return ListTile(leading: CircleAvatar(radius: 25, backgroundImage: AssetImage(chats[index]["image"]),),title: Text(chats[index]["name"]), subtitle: Text(chats[index]["message"], overflow: TextOverflow.ellipsis,),);
            }))
          ],)
        )
    );
  }
}
  /*Scaffold LoginPage() {
    return Scaffold(
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
    );
  }
}*/