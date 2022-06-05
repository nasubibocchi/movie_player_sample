import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MovieWidget extends StatefulWidget {
  const MovieWidget({required this.moviePath, Key? key}) : super(key: key);

  final String moviePath;

  @override
  State<MovieWidget> createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  late VideoPlayerController videoController;

  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.network(widget.moviePath)
      ..initialize();
    videoController.play();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: width,
      child: VideoPlayer(videoController),
    );
  }

  @override
  void dispose() {
    super.dispose();
    videoController.dispose();
    videoController.pause();
  }
}
