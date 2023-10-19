import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W3C2 extends StatefulWidget {
  const W3C2({super.key});

  @override
  State<W3C2> createState() => _W3C2State();
}

class _W3C2State extends State<W3C2> {
  late VideoPlayerController _controller;

  loadVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/videos/DFS_Animation.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    loadVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
          backgroundColor: Colors.black,
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Depth First Search"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: 'Depth First Search'),
                SizedBox(height: 16.0),
                T_Body(t: '       ใช้สแต็กสำหรับการจัดเก็บจุดยอดเยี่ยม DFS เป็นวิธีการที่อิงกับขอบและทำงานในแบบเรียกซ้ำที่มีการสำรวจจุดยอดตามเส้นทาง (ขอบ) การสำรวจของโหนดจะถูกระงับทันทีที่พบโหนดที่ไม่ได้สำรวจอีกโหนดและโหนดที่ไม่ได้สำรวจที่ลึกที่สุดจะถูกสำรวจที่สำคัญที่สุด การสำรวจ DFS / การเยี่ยมแต่ละจุดสุดยอดหนึ่งครั้งและแต่ละขอบจะถูกตรวจสอบสองครั้ง'),
                SizedBox(height: 16.0),
                C_Img(img: 'W3C2/1'),
                SizedBox(height: 16.0),
                C_Img(img: 'W3C2/2'),
                SizedBox(height: 16.0),
                Center(child: T_Head(t: 'วีดีโอสอน')),
                SizedBox(height: 16.0),
                Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
                Container(
                    child: VideoProgressIndicator(_controller,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                          backgroundColor: Colors.redAccent,
                          playedColor: Colors.green,
                          bufferedColor: Colors.purple,
                        ))),
                SizedBox(height: 60.0),
              ],
            ),
          ),
        ));
  }
}