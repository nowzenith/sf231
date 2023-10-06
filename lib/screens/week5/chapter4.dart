import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W5C4 extends StatefulWidget {
  const W5C4({super.key});

  @override
  State<W5C4> createState() => _W5C4State();
}

class _W5C4State extends State<W5C4> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Huffman Coding"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: "Huffman Coding"),
                SizedBox(height: 16.0),
                T_Body(t: 'How to\n       1.เริ่มจากเขียนสัญลักษณ์ของข้อมูลทั้งหมด\n       2.ต่อบัพ 2 บีพที่มีความถี่(frequency)ต่ำสุด 2 บัพ เข้าด้วยกันจะได้ป่า 1 ป่า\n       3. สร้างป่าไปเรื่อยๆแล้วค่อยเอาป่าที่มีความถี่ต่ำสุดมาจับคู่กันต่อไปเรื่อยๆจนกว่าจะได้ tree'),
                SizedBox(height: 16.0),
                C_Img(img: 'W5C4/1'),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ));
  }
}