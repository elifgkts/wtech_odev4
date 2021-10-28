import 'package:flutter/material.dart';
import 'package:wtech_odev4/main.dart';
import 'package:wtech_odev4/video.dart';


class Yardim extends StatefulWidget {

  @override
  _YardimState createState() => _YardimState();
}

class _YardimState extends State<Yardim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Bir Önceki Sayfaya Dön"),
              onPressed: (){
                Navigator.pop(context);

              },
            ),
            ElevatedButton(
              child: Text("Geldiğin Sayfaya Dön"),
              onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);

              },
            ),
            ElevatedButton(
              child: Text("Ana Sayfaya Dön"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Anasayfa()));

              },
            ),
            ElevatedButton(
              child: Text("Video Sayfasına Git"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Video()));

              },
            ),


          ],
        )
      ),

    );
  }
}
