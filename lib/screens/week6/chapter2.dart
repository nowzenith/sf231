import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W6C2 extends StatefulWidget {
  const W6C2({super.key});

  @override
  State<W6C2> createState() => _W6C2State();
}

class _W6C2State extends State<W6C2> {

  AudioPlayer? _player;
  bool _playing = false;
  final player = AudioPlayer();

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _play() async {
    setState(() {
      _playing = !_playing;
    });
    if (_playing){
    _player?.dispose();
    _player = AudioPlayer();
    await player.play(AssetSource('audios/W6C2.m4a'));
    }
    else{
      player.stop();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _play,
        tooltip: 'Play',
        child: _playing ? const Icon(Icons.square_rounded) : const Icon(Icons.play_circle),
      ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Bayes' Theorem"),
          backgroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.0),
                C_Img(img: 'W6C2/1'),
                SizedBox(height: 16.0),
                T_Head(t: "การประยุกต์ใช้"),
                SizedBox(height: 16.0),
                T_Body(t: '       1. ใช้เมื่อเหตุการณ์ทั้งหมดอยู่ในชุดตัวอย่าง เป็นเหตุการณ์ที่ไม่สามารถเกิดพร้อมกันได้ '),
                SizedBox(height: 8.0),
                T_Body(t: '       2. ใช้เมื่อทราบ P(Ai∩B)P(Ai∩B) สำหรับ AiAi แต่ละเหตุการณ์ หรือทราบ P(Ai)P(Ai) และ P(B∣Ai)P(B∣Ai) สำ หรับ AiAi แต่ละเหตุการณ์'),
              ],
            ),
          ),
        ));
  }
}