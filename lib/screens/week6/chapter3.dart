import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W6C3 extends StatefulWidget {
  const W6C3({super.key});

  @override
  State<W6C3> createState() => _W6C3State();
}

class _W6C3State extends State<W6C3> {

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
    await player.play(AssetSource('audios/W6C3.m4a'));
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
          title: const Text("Conditional Probability"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Body(t: '       ความน่าจะเป็นแบบมีเงื่อนไขของ เหตุการณ์ B เมื่อเหตุการณ์ A เกิดขึ้น ถูก แทนด้วยสัญลักษณ์ P(B∣A)P(B∣A).'),
                SizedBox(height: 16.0),
                T_Body(t: '       สูตร: P(B∣A) = P(A∩B)P(A)P(B∣A) = P(A)P(A∩B)'),
                SizedBox(height: 16.0),
                C_Img(img: 'W6C3/1'),
                SizedBox(height: 16.0),
                T_Body(t: 'สามารถเกิดพร้อมกันได้ แล้ว P(B∣A)=P(B).'),
              ],
            ),
          ),
        ));
  }
}