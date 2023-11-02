import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W6C5 extends StatefulWidget {
  const W6C5({super.key});

  @override
  State<W6C5> createState() => _W6C5State();
}

class _W6C5State extends State<W6C5> {

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
    await player.play(AssetSource('audios/W6C5.m4a'));
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
          title: const Text("Properties of Probability"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Body(t: 'ความน่าจะเป็นนั้นมีคุณสมบัติคร่าวๆ อยู่ 5 ข้อ นั่นก็คือ'),
                SizedBox(height: 16.0),
                T_Body(t: '1. ความน่าจะเป็นของเหตุการณ์ A จะมีค่าเป็น 0 - 1 (0 < P(A) < 1)'),
                SizedBox(height: 8.0),
                T_Body(t: '2. ถ้าการทดลองสุ่มมี Sample space S = {a1, a2,... ,an} จะได้'),
                SizedBox(height: 8.0),
                T_Body(t: '       P(a1)+P(a2)+...+P(an) = 1'),
                SizedBox(height: 8.0),
                T_Body(t: '       P(S) = 1'),
                SizedBox(height: 8.0),
                T_Body(t: '3. ความน่าจะเป็นของ เซ็ตว่าง คือ 0'),
                SizedBox(height: 8.0),
                T_Body(t: '4. ถ้า A และ B เป็นเหตุการณ์ที่เกิดร่วมกันไม่ได้ ความน่าจะเป็นที่เหตุการณ์ A หรือ B จะเกิด คือ'),
                SizedBox(height: 8.0),
                T_Body(t: '       P(A U B)=P(A)+P(B)'),
                SizedBox(height: 8.0),
                T_Body(t: '5. ถ้า A1, A2... . เป็นเหตุการณ์ที่ไม่มีคู่ใดมีผลลัพธ์ร่วมกัน (Mutually Exclusive เป็นคู่ๆ) จะได้ว่า'),
                SizedBox(height: 8.0),
                T_Body(t: '       P(A1UA2U...)=P(Al)+P(A2)+...'),
                SizedBox(height: 8.0),
              ],
            ),
          ),
        ));
  }
}