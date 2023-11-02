import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W6C4 extends StatefulWidget {
  const W6C4({super.key});

  @override
  State<W6C4> createState() => _W6C4State();
}

class _W6C4State extends State<W6C4> {

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
    await player.play(AssetSource('audios/W6C4.m4a'));
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
          title: const Text("Axioms of probability"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Body(t: 'ให้ A เป็น เหตุการณ์สุ่ม ที่มี ปริภูมิตัวอย่าง เป็น S'),
                SizedBox(height: 8.0),
                T_Body(t: 'สัจพจน์ข้อแรก'),
                SizedBox(height: 8.0),
                T_Body(t: 'P(A) เป็นจำนวนจริงมีค่าระหว่าง 0 กับ 1'),
                SizedBox(height: 8.0),
                T_Body(t: '0 ≤ P(A) ≤ 1'),
                SizedBox(height: 8.0),
                T_Body(t: 'สัจพจน์ข้อที่สอง'),
                SizedBox(height: 8.0),
                T_Body(t: 'P(S) = 1'),
                SizedBox(height: 8.0),
                T_Body(t: 'สัจพจน์ข้อที่สาม'),
                SizedBox(height: 8.0),
                T_Body(t: 'สำหรับเหตุการณ์ A1, A2, .. , An ที่ไม่เกิดร่วมกัน'),
                SizedBox(height: 8.0),
              ],
            ),
          ),
        ));
  }
}