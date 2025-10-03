import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: new ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 61, 11, 227)),
      ),
      home: HomePage() ,
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage();

  Widget build(BuildContext context){

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sonic the Hedgehog",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600
          ),
        ),
        actions: [
          ElevatedButton.icon(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>const SecondPage()));

          },
           icon: Icon(Icons.photo_album),
           label: new Text("Second Page"),
           )
        ],
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Short description: Sonic the Hedgehog is a fictional character created by Sega"),
             Text("He was created by Dr. Ivo Robotnik as a part of his genetic experiments"),
             Text("He's most famous for being the fastest creature alive as well as loving chilli dogs"),
             SizedBox(height: 20.0),
            Text("Why I like Sonic:"),
             SizedBox(height: 10.0),
             Text("1. The soundtrack to his video games are iconic and filled with bangers."),
            Text("2. I have alot of Nostalgia for sonic media growing up including the games and shows"),
           Text("3. His character design is awesome."),
          ],
        ),
      ),
    );

  }

}



class SecondPage extends StatelessWidget{

  const SecondPage();
  
  @override
  Widget build(BuildContext context){

    return new Scaffold(
      backgroundColor: Colors.blue ,
      body: new Stack(
        children:[
          new Align(
            alignment: Alignment.topLeft,
            child: Image.asset("assets/imgs/SonicIMG1.jpg"),
          ),
          new Align(
            alignment: Alignment.topRight,
            child:Image.asset("assets/imgs/SonicIMG2.jpg")

          ),
          new Align(
            alignment: Alignment.bottomRight,
            child: Image.asset("assets/imgs/SonicIMG3.jpg")


          ),
          new Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/imgs/SonicIMG4.webp")

          ),
          new Align(
            alignment: Alignment.center,
            child: new ElevatedButton.icon(onPressed: (){
              Navigator.pop(context);

         },
            icon: Icon(Icons.home),
            label: new Text("Back to HomePage"),
             ) ,
          )
        ],

      ),

    );



  }

}
