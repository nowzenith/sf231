import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W1C2 extends StatefulWidget {
  const W1C2({super.key});

  @override
  State<W1C2> createState() => _W1C2State();
}

class _W1C2State extends State<W1C2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Memory"),
          backgroundColor: Colors.black
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: 'Memory คืออะไร'),
                SizedBox(height: 16.0),
                T_Body(
                    t: '       โดยก่อนที่จะพูดถึง Memory นั้นเราต้องเข้าใจพื้นฐานของ computer กันก่อนว่ามันทำงานอย่างไรบ้าง โดยสิ่งที่สำคัญที่สุดของ Computer คือ CPU ซึ่งจะทำหน้าที่คำนวณทางคณิตศาสตร์เกือบทุกอย่าง แต่ปัญหาหลักคือ CPU นั้นไม่มีหน่วยความจำ นั่นคือทำไมเราถึงต้องมี Memory'),
                SizedBox(height: 8.0),
                T_Body(
                    t: '       Memory จะเป็นตัวเก็บข้อมูลเกือบทุกอย่าง เช่น ถ้าจะคำนวณ 2 + 3 เราต้องมี Memory ที่เก็บเลข 2 และ เลข 3 ไว้ นั่นเอง'),
                SizedBox(height: 16.0),
                T_Head(t: 'โดยหลักๆแล้ว memory จะมีอยู่ 3 ประเภทด้วยกัน'),
                SizedBox(height: 16.0),
                T_Body(
                    t: '       Primary Memory/Main Memory หรือที่เรียกว่า Ram นั่นเอง คือหน่วยความจำหลักที่เก็บชุดคำสั่งและข้อมูลที่ระบบนั้นทำงานอยู่ เช่น เราเปิดโปรแกรมขึ้นมาทำงาน แบบนี้เราก็จะทำงานอยู่บน Ram นั่นเอง ถ้าเรามี Ram ที่จำนวนเยอะก็จะสามารถทำงานได้เร็วขึ้นนั่นเอง'),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C2/1'),
                SizedBox(height: 16.0),
                T_Body(
                    t: '       Cache Memory เนื่องจากการพัฒนาการของ CPU มีความเร็วขึ้นเรื่อยๆ ซึ่งทำให้ ram ในสมัยก่อนนั้น ส่งข้อมูลไปไม่ทัน เลยมีการสร้าง Memory ที่เร็วขึ้น มีชื่อว่า Cache Memory โดยถ้ามีข้อมูลที่ใช้เป็นประจำ จะถูกเก็บไว้ใน Cache เพื่อที่จะนำไปใช้ดึงข้อมูลได้อย่างรวดเร็ว ซึ่งส่วนใหญ่จะเก็บแต่ข้อมูลสำคัญๆที่ใช้ซ้ำบ่อยๆ'),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C2/2'),
                SizedBox(height: 16.0),
                T_Body(
                    t: '       Secondary Memory เป็นหน่วยความจำถาวร ความจำถาวรคืออะไร คือเมื่อเราปิดคอมพิวเตอร์ข้อมูลก็จะยังอยู่หรือไม่หายไปนั่นเอง โดยเราจะรู้จักในชื่อ HDD(Hard Disk Drive) ฮาร์ดดิส หรือ SSD(Solid State Drive) โดยมันจะไม่สามารถเข้าถึง CPU ได้โดยตรง ต้องเอาข้อมูลนั้น เก็บขึ้นไปไว้ที่ ram ก่อน หลังจากนั้น CPU ถึงจะใช้งานข้อมูลนั้นได้'),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C2/3'),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ));
  }
}
