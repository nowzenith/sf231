import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';
class W1C3 extends StatefulWidget {
  const W1C3({super.key});

  @override
  State<W1C3> createState() => _W1C3State();
}

class _W1C3State extends State<W1C3> {
  late VideoPlayerController _controller;

  loadVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/videos/mst_video.mp4');
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
          title: const Text("Minimum Spanning Tree"),
          backgroundColor: Colors.black
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const T_Body(
                    t: '       (Minimum Spanning Tree: MST) คือเซตของเส้นเชื่อมในกราฟที่เชื่อมโหนดทุกโหนดด้วยเส้นเชื่อมบางเส้น โดยที่ค่ารวมของน้ำหนักบนเส้นเชื่อมทั้งหมดนั้นเป็นค่าน้อยที่สุดที่เป็นไปได้ในกราฟนั้นๆ'),
                const SizedBox(height: 8.0),
                const T_Head(t: 'Prim\'s algorithm'),
                const SizedBox(height: 16.0),
                const T_Body(
                    t: '       อัลกอริทึมของ Prim ใช้ในการหา Minimum Spanning Tree โดยเริ่มจากโหนดใดๆ เพื่อให้เกิดการประสานที่มีน้ำหนักน้อยที่สุดเรื่อยๆ จนเชื่อมต่อกันครบทุกโหนด'),
                const SizedBox(height: 8.0),
                const T_Head(t: 'ขั้นตอนของอัลกอริทึม Prim ได้แก่'),
                const SizedBox(height: 16.0),
                const T_Body(
                    t: '       1. ขั้นตอนเริ่มต้น: เลือกโหนดใดๆ เป็นต้นแบบของ MST ได้ตามความเหมาะสม ไม่จำเป็นต้องเริ่มจากโหนดใดๆ เพียงแค่เลือกหนึ่งโหนดเพื่อเริ่มต้น'),
                const SizedBox(height: 16.0),
                const T_Body(
                    t: '       2. การเลือกเส้นเชื่อม: ในแต่ละขั้นตอนเลือกจะเส้นเชื่อมที่มีน้ำหนักน้อยที่สุด คือเลือกเส้นที่สั้นที่สุดที่เชื่อมขอบเขตระหว่าง MST ปัจจุบันและส่วนอื่นของกราฟ'),
                const SizedBox(height: 16.0),
                const T_Body(
                    t: '       ทำซ้ำ: ทำขั้นตอน 1และ 2 จนกว่าโหนดทั้งหมดจะถูกรวมใน MST'),
                const SizedBox(height: 16.0),
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
