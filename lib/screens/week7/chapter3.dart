import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W7C3 extends StatefulWidget {
  const W7C3({super.key});

  @override
  State<W7C3> createState() => _W7C3State();
}

class _W7C3State extends State<W7C3> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Quick Sort"),
          backgroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                T_Body(t: '       Quick sort เป็นวิธีที่นิยมใช้เป็นอย่างมาก '),
                SizedBox(height: 8.0),
                T_Body(t: 'วิธีทำ'),
                SizedBox(height: 8.0),
                T_Body(t: '       1. เลือกตัวเลขขึ้นมาเรียกตัวเลขนี้ว่า Pivot ใช้หลักการหาแบบ Median of three '),
                SizedBox(height: 8.0),
                T_Body(t: '       2. ย้ายค่า Pivot ไปขวาสุด '),
                SizedBox(height: 8.0),
                T_Body(t: '       3. เช็คตัวซ้ายสุด ขวา สุด ที่ติดกับ Pivot ถ้าตัวซ้ายมากกว่าก็สลับที่กับตัวขวา '),
                SizedBox(height: 8.0),
                T_Body(t: '       4. แบ่งกลุ่มตัวเลขออกเป็น 2 กลุ่ม โดยกลุ่มที่ 1 (ทางซ้าย) จะต้องเป็นเลขที่น้อยกว่า Pivot กลุ่มที่ 2 (ทางขวา) จะต้องเป็นเลขที่มากกว่า Pivot '),
                SizedBox(height: 8.0),
                T_Body(t: '       5. ทำซ้ำจน กลุ่ม 1 > Pivot < กลุ่ม 2 '),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/2'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/3'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/4'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/5'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/6'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/7'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/8'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/9'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/10'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/11'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/12'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/13'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/14'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/15'),
                SizedBox(height: 8.0),
                C_Img(img: 'W7C4/16'),
                SizedBox(height: 8.0),
              ],
            ),
          ),
        ));
  }
}