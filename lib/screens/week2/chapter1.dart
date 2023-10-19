import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W2C1 extends StatefulWidget {
  const W2C1({super.key});

  @override
  State<W2C1> createState() => _W2C1State();
}

class _W2C1State extends State<W2C1> {
  late VideoPlayerController _controller;

  loadVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/videos/heap_video.mp4');
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
          title: const Text("Heap 1"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: 'การหาค่าต่างๆ'),
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
                SizedBox(height: 16.0),
                T_Body(t: 'หาค่าตำแหน่ง A,B ได้โดยใช้ค่าของ i ของ 9 ซื่งเป็น floor ที่อยู่ก่อนและเชื่อมกันโดย A อยู่ทางซ้าย จะใช้สูตร left(i) = 2i ซึ่งจะได้ i = 5 แทนค่า ได้ 2(5) = 10 และ B อยู่ทางขวา จะใช้สูตร right(i) = 2i + 1 ซึ่งจะได้ i = 5 แทนค่า ได้ 2(5) + 1 = 11'),
                SizedBox(height: 16.0),
                T_Body(t: 'อีกสูตร Parent(i) = floor(i/2) วิธีใช้ สมมุติเรารู้ค่า A แล้ว จะหาค่า Parent(A) ได้โดยใช้สูตร Parent(A) = floor(A/2) ซึ่งจะได้ floor(10/2) = 5 และเราจะได้ค่า B ได้โดยใช้สูตร Parent(B) = floor(B/2) ซึ่งจะได้ floor(11/2) = 5'),
              ],
            ),
          ),
        ));
  }
}