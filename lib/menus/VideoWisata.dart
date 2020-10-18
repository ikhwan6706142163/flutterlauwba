import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_youtube_view/flutter_youtube_view.dart';

class VideoWisata extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VideoWisata();
  }
}

class _VideoWisata extends State<VideoWisata> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterYoutubeView(
            // onViewCreated: _onYoutubeCreated,
            // listener: this,
            scaleMode: YoutubeScaleMode.none, // <option> fitWidth, fitHeight
            params: YoutubeParam(
                videoId: 'gcj2RUWQZ60',
                showUI: false,
                startSeconds: 0.0, // <option>
                autoPlay: true) // <option>
            ));
  }
}
