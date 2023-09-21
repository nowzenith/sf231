import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W4C1 extends StatefulWidget {
  const W4C1({super.key});

  @override
  State<W4C1> createState() => _W4C1State();
}

class _W4C1State extends State<W4C1> {
  late VideoPlayerController _controller;

  loadVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/videos/Dijkstra_Animation.mp4');
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
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Dijkstra's Algorithm"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: "Dijkstra's Algorithm"),
                SizedBox(height: 16.0),
                T_Body(t: '       เพื่อแก้ไขปัญหาวิถีสั้นสุดจากจุดหนึ่งใด ๆ สำหรับกราฟที่มีความยาวของเส้นเชื่อมไม่เป็นลบ สำหรับขั้นตอนวิธีนี้จะหาระยะทางสั้นที่สุดจากจุดหนึ่งไปยังจุดใด ๆ ในกราฟโดยจะหาเส้นทางที่สั้นที่สุดไปทีละจุดยอดเรื่อย ๆ จนครบตามที่ต้องการ'),
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
                SizedBox(height: 16.0),
                T_Body(t: '       จากภาพเริ่มต้นจาก A แสดงว่าระยะทางถึงจุด A ได้ 0 จุดต่อมาเป็น B กับ C ซึ่งห่างกับ A 4 และ 2 ตามลำดับซึ่งในกรณีนี้จะแค่ระยะทางของ C ซึ่งเท่ากับ 2 และทำไม B ถึงไม่้ท่ากับ 4 เพราะว่าหากสังเกตดีๆจะเห็นว่า จาก A ไป C ไป B มีระยะทางเพียง 1+2= 3 ซึ่งต่อมาก็วิเคราะห์อีกว่าเส้นทางไหนสั้นที่สุดในการไปยังจุดต่อไปซึ่งก็คือ D ระยะทางได้เป็น 2+3= 5 ต่อมาคือ E ระยะทางก็จะเป็น 2+3+1 = 6 ตามรูป F ก็เช่นกัน 2+3+2 = 7 ส่วนสุดท้าย G ก็จะได้ระยะทาง 2+3+1+1  = 7 '),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ));
  }
}