import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W7C1 extends StatefulWidget {
  const W7C1({super.key});

  @override
  State<W7C1> createState() => _W7C1State();
}

class _W7C1State extends State<W7C1> {
  late VideoPlayerController _controller;

  loadVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/videos/bb_sort.mp4');
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
          title: const Text("Bubble Sort"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                T_Body(t: '       Bubble Sort เป็นอัลกอริทึมการจัดเรียงที่ง่ายที่สุด โดยการเปรียบเทียบข้อมูลสองตำแหน่งที่อยู่ติดกัน ถ้าข้อมูลเรียงกันไม่ถูกต้องก็จะถูกสลับไปเรื่อยๆจนถึงคู่สุดท้าย จะเรียงจากน้อยไปมากหรือมากไปน้อยก็ได้ แต่อัลกอริทึมนี้ไม่เหมาะกับข้อมูลขนาดใหญ่เนื่องจากความซับซ้อนค่อนข้างสูง'),
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
              ],
            ),
          ),
        ));
  }
}