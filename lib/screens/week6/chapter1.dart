import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W6C1 extends StatefulWidget {
  const W6C1({super.key});

  @override
  State<W6C1> createState() => _W6C1State();
}

class _W6C1State extends State<W6C1> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Probability"),
          backgroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Body(t: '       หรือความน่าจะเป็นคือเหตุการณ์ใด เหตุการณ์หนึ่งที่มีโอกาสที่จะเกิดสิ่งต่างๆ โดยไม่มีผลตายตัว โดยมี 4 สิ่งที่เราต้องพิจารณา มีดังนี้'),
                SizedBox(height: 16.0),
                T_Head(t: '   1. Random Experiment - การทดลองสุ่ม'),
                SizedBox(height: 8.0),
                T_Body(t: '       เป็นการทดลองที่ได้ Output ที่ต่างกันและไม่สามมารถตอบได้ว่าเป็นค่าอะไรเช่น การโยนลูกเต๋า'),
                SizedBox(height: 16.0),
                T_Head(t: '   2. Sample spaces - ปริภูมิตัวอย่าง'),
                SizedBox(height: 8.0),
                T_Body(t: '       ผลที่ได้จากกระบวนการสุ่ม นั้นเราเรียกว่า Sample Spaces(S) แบ่งได้ 2 ส่วนคือ\n            2.1 discrete จะเป็นจุดเป็นค่าที่ชัดเจน เช่น โยนลูกเต๋า ค่าที่เป็นไปได้คือ S= {1, 2, 3, 4, 5, 6}\n             2.2 continuous จะเป็นช่วงของค่าที่สามารถเป็นไปได้ เช่น อุณหภูมิ เป็นต้น'),
                SizedBox(height: 16.0),
                T_Head(t: '   3. Event'),
                SizedBox(height: 8.0),
                T_Body(t: '       เป็นสิ่งที่เราสนใจ มี 3 รูปแบบ\n             3.1 Union (U) จะเลือกข้อมูลทั้งหมด\n             3.2 Intersection (∩) เลือกเฉพาะตัวที่ซ้ำกัน\n              3.3 Complement (A′) ไม่เอาข้อมูลนั้นเลย'),
                SizedBox(height: 16.0),
                T_Head(t: 'ขั้นตอนการหา probability'),
                SizedBox(height: 8.0),
                T_Body(t: '       1. หาค่าที่เป็นไปได้ทั้งหมด'),
                T_Body(t: '       2. หาผลลัพธ์ที่ต้องการหา'),
                T_Body(t: '       3. ใช้สูตรprobability คือ  P(E) = จำนวน Event E / จำนวน Sample Space = E/S'),
              ],
            ),
          ),
        ));
  }
}