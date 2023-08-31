import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class W1C3 extends StatefulWidget {
  const W1C3({super.key});

  @override
  State<W1C3> createState() => _W1C3State();
}

class _W1C3State extends State<W1C3> {
  AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.volume_up_outlined),
          onPressed: () async {
            await player.play(AssetSource('audios/W1C3_photo.m4a'));
          },
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Minimum Spanning Tree"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Body(
                    t: '       (Minimum Spanning Tree: MST) คือเซตของเส้นเชื่อมในกราฟที่เชื่อมโหนดทุกโหนดด้วยเส้นเชื่อมบางเส้น โดยที่ค่ารวมของน้ำหนักบนเส้นเชื่อมทั้งหมดนั้นเป็นค่าน้อยที่สุดที่เป็นไปได้ในกราฟนั้นๆ'),
                SizedBox(height: 8.0),
                T_Head(t: 'Prim\'s algorithm'),
                SizedBox(height: 16.0),
                T_Body(
                    t: '       อัลกอริทึมของ Prim ใช้ในการหา Minimum Spanning Tree โดยเริ่มจากโหนดใดๆ เพื่อให้เกิดการประสานที่มีน้ำหนักน้อยที่สุดเรื่อยๆ จนเชื่อมต่อกันครบทุกโหนด'),
                SizedBox(height: 8.0),
                T_Head(t: 'ขั้นตอนของอัลกอริทึม Prim ได้แก่'),
                SizedBox(height: 16.0),
                T_Body(
                    t: '       1. ขั้นตอนเริ่มต้น: เลือกโหนดใดๆ เป็นต้นแบบของ MST ได้ตามความเหมาะสม ไม่จำเป็นต้องเริ่มจากโหนดใดๆ เพียงแค่เลือกหนึ่งโหนดเพื่อเริ่มต้น'),
                SizedBox(height: 16.0),
                T_Body(
                    t: '       2. การเลือกเส้นเชื่อม: ในแต่ละขั้นตอนเลือกจะเส้นเชื่อมที่มีน้ำหนักน้อยที่สุด คือเลือกเส้นที่สั้นที่สุดที่เชื่อมขอบเขตระหว่าง MST ปัจจุบันและส่วนอื่นของกราฟ'),
                SizedBox(height: 16.0),
                T_Body(
                    t: '       ทำซ้ำ: ทำขั้นตอน 1และ 2 จนกว่าโหนดทั้งหมดจะถูกรวมใน MST'),
                SizedBox(height: 16.0),
                C_Gif(img: 'W1C3/g1'),
              ],
            ),
          ),
        ));
  }
}
