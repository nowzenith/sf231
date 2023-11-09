import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W7C2 extends StatefulWidget {
  const W7C2({super.key});

  @override
  State<W7C2> createState() => _W7C2State();
}

class _W7C2State extends State<W7C2> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Merge Sort"),
          backgroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Body(t: '       เป็น algorithm แบบหนึ่งที่เป็นลักษณะแบ่งก่อนแล้วนํามารวมกัน(divide and conquer) ซึ่งจะแบ่งข้อมูลออกเป็น 2 ส่วน แล้วก็แบ่งในส่วนย่อยออกไปอีก 2 ส่วน ไปเรื่อยๆจนกว่าจะแบ่งไม่ได้แล้วจากนั้นจะทําการเรียงข้อมูลในส่วนย่อยแล้วค่อยๆนํามารวมกันและก็ขณะที่รวมกันนั้นก็จะนําส่วนย่อยก่อนหน้ามาเรียงกันก่อนที่รวมกันกลับนั้นเอง\nตัวอย่างเช่น'),
                SizedBox(height: 16.0),
                C_Img(img: 'W7C2/1'),
              ],
            ),
          ),
        ));
  }
}