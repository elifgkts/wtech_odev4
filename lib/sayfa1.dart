import 'package:flutter/material.dart';



class SayfaBir extends StatefulWidget {
  const SayfaBir({Key? key}) : super(key: key);

  @override
  _SayfaBirState createState() => _SayfaBirState();

}

class _SayfaBirState extends State<SayfaBir> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sayfa 1", style: TextStyle(color:Colors.black54, fontSize: 30),),

    );
  }
}
