import 'package:flutter/material.dart';
import 'package:wtech_odev4/video.dart';
import 'package:wtech_odev4/yardim.dart';
import 'package:wtech_odev4/sayfa1.dart';
import 'package:wtech_odev4/sayfa2.dart';
import 'package:wtech_odev4/sayfa3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Odev4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home:  Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var sayfaListe = [SayfaBir(), SayfaIki(), SayfaUc(), Video(), Yardim()];
  int secilenIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wtech Ödev4"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Yardim()));
                    },

                child: Icon(
                  Icons.help,
                  size: 26.0,
                ),
              ),
          ),

        ],



      ),
      body: sayfaListe[secilenIndex],

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(

                child: Text("Wtech Ödev4",style: TextStyle(color:Colors.white,fontSize: 30),),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),

              ),
              ListTile(
                title: Text("Sayfa 1"),
                leading:  Icon(Icons.looks_one, color: Colors.pinkAccent,),
                onTap: (){
                  setState(() {
                    secilenIndex=0;
                  });
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: Text("Sayfa 2"),
                leading:  Icon(Icons.looks_two, color: Colors.pinkAccent,),
                onTap: (){
                  setState(() {
                    secilenIndex=1;
                  });
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: Text("Sayfa 3"),
                leading:  Icon(Icons.looks_3, color: Colors.pinkAccent,),
                onTap: (){
                  setState(() {
                    secilenIndex=2;
                  });
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: Text("Video"),
                leading:  Icon(Icons.ondemand_video, color: Colors.pinkAccent,),
                onTap: (){
                  setState(() {
                    secilenIndex=3;
                  });
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: Text("Yardım"),
                leading:  Icon(Icons.help, color: Colors.pinkAccent,),
                onTap: (){
                  setState(() {
                    secilenIndex=4;
                  });
                  Navigator.pop(context);
                },
              ),



            ],
          ),
        ),

      );
  }
}