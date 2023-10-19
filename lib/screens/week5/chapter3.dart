import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W5C3 extends StatefulWidget {
  const W5C3({super.key});

  @override
  State<W5C3> createState() => _W5C3State();
}

class _W5C3State extends State<W5C3> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Number"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: "Sign-Magnitude System"),
                SizedBox(height: 16.0),
                T_Body(t: '       โดยในส่วนแรกนั้นจะเป็นส่วนที่เรียกว่า Magnitude หรือค่าขนาดของบิตตัวเลข มีตำแหน่งอยู่ที่สามนับจากขวา และส่วนที่สองจะเรียกว่า Signed Bit หรือค่าขนาดหนึ่งบิตแทนเครื่องหมายบวกหรือลบ หรือเรียกสั้นๆ ว่าบิตเครื่องหมาย โดยที่บิตเครื่องหมายนี้จะมีค่าเป็นบิตสูงสุด มีตำแหน่งอยู่หน้าสุด'),
                SizedBox(height: 16.0),
                C_Img(img: 'W5C3/1'),
                SizedBox(height: 16.0),
                T_Head(t: "1’s Complement"),
                SizedBox(height: 16.0),
                T_Body(t: '       เป็นการเปลี่ยนค่าสถานะของบิตเครื่องหมาย คือถ้าบิตเครื่องหมายเป็น 1 ให้เปลี่ยนเป็น 0 และถ้าบิตเครื่องหมายเป็น 0 ให้เปลี่ยนเป็น 1 โดยที่จะทำการเปลี่ยนสถานะทุกบิตกลับกันทั้งหมด ตามตัวอย่างต่อไปนี้'),
                SizedBox(height: 16.0),
                C_Img(img: 'W5C3/2'),
                SizedBox(height: 16.0),
                T_Head(t: "2’s Complement System"),
                SizedBox(height: 16.0),
                T_Body(t: '       เป็นเหมือนกับส่วนเติมเต็มหนึ่ง แต่หลังจากได้ผลลัพธ์มาแล้วให้บวกค่าเพิ่มเข้าไปอีก 1 การทำเช่นนี้เป็นการปรับปรุงเพิ่มเติมต่อจากส่วนเติมเต็มหนึ่งเพื่อให้มีค่า 0 เพียงแค่ค่าเดียว และทำให้ไม่ต้องเพิ่มค่าบิตที่ล้นกลับเข้าไปเหมือนที่ต้องทำในการทำส่วนเติมเต็มหนึ่ง ระบบส่วนเติมเต็มสองสามารถทำได้โดยถ้าเป็นเลขบวกไม่ต้องเปลี่ยนค่าสถานะของบิตเครื่องหมาย แต่ถ้าเป็นเลขลบ ให้ทำการกลับค่าโดยการทำส่วนเติมเต็มหนึ่งทุกบิต และบวก 1 เสมอตามตัวอย่างต่อไปนี้'),
                SizedBox(height: 16.0),
                C_Img(img: 'W5C3/3'),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ));
  }
}