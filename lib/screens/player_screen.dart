import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayerScreen extends StatefulWidget {
  final String url;
  
const PlayerScreen({super.key, required this.url});

  @override
  State<PlayerScreen> createState() => __PlayerScreenStateState();
}

class __PlayerScreenStateState extends State<PlayerScreen> {
  late YoutubePlayerController _controller;
  late TextEditingController _idgController;
  late TextEditingController _seekController;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  bool _idPlayerReady = false;
  late String _videoId;

@override
void initState(){
  super.initState();
  _videoId = YoutubePlayer.convertUrlToId(widget.url). toString();
 print('VideoId: $_videoId');
 _controller = YoutubePlayerController(
  initialVideoId: _videoId,
  flags: const YoutubePlayerFlags(
    mute: false,
    autoPlay: true,
    disableDragSeek: false,
    loop: false,
    isLive: false,
    forceHD: false,
    enableCaption: true));
 }
}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

