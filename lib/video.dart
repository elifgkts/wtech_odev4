import 'package:flutter/material.dart';
import 'package:wtech_odev4/yardim.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

/*class _SiirlerState extends State<Siirler> {
  @override
  Widget build(BuildContext context) {*/
    class _VideoState extends State<Video> {
    static String videoID = 'uMvzFzKvAd4';



    YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
    autoPlay: false,
    mute: false,
    ),
    );

    @override
    Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.red,
            showVideoProgressIndicator: true, //ilerleme çubuğu
          ),


        ElevatedButton(
        child: Text("Yardım Sayfasına Geç"),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Yardim()));

      },
        ),


            ],
          )
        ),

    );
    }
    }