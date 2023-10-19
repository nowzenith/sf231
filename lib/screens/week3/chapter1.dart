import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W3C1 extends StatefulWidget {
  const W3C1({super.key});

  @override
  State<W3C1> createState() => _W3C1State();
}

class _W3C1State extends State<W3C1> {
  late VideoPlayerController _controller;

  loadVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/videos/BFS_Animation.mp4');
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
          title: const Text("Breadth First Search"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: 'Breadth First Search'),
                SizedBox(height: 16.0),
                T_Body(t: '       เป็นวิธีการสำรวจเส้นทางที่ใช้ในกราฟ มันใช้คิวสำหรับการจัดเก็บจุดยอดเยี่ยม ในวิธีการนี้การเน้นอยู่ที่จุดยอดของกราฟจุดยอดหนึ่งจุดจะถูกเลือกในตอนแรกจากนั้นจะมีการเยี่ยมชมและทำเครื่องหมาย จุดยอดที่อยู่ติดกับจุดสุดยอดที่เยี่ยมชมนั้นจะถูกเยี่ยมชมและเก็บไว้ในคิวตามลำดับ ในทำนองเดียวกันจุดยอดที่เก็บไว้จะได้รับการปฏิบัติทีละจุดและเยี่ยมชมจุดยอดที่อยู่ติดกัน โหนดจะถูกสำรวจอย่างสมบูรณ์ก่อนที่จะไปที่โหนดอื่นในกราฟหรือกล่าวอีกนัยหนึ่งมันจะสำรวจโหนดที่ไม่ได้สำรวจตื้นที่สุดก่อน'),
                SizedBox(height: 16.0),
                C_Img(img: 'W3C1/1'),
                SizedBox(height: 16.0),
                C_Img(img: 'W3C1/2'),
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