import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
      ),
      body: Center(
        child: BetterPlayer.network(
          "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
          betterPlayerConfiguration: BetterPlayerConfiguration(
            looping: true,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
