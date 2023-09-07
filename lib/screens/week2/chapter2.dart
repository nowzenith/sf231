import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W2C2 extends StatefulWidget {
  const W2C2({super.key});

  @override
  State<W2C2> createState() => _W2C2State();
}

class _W2C2State extends State<W2C2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Heap 2"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: 'Heap Tree- จะมีสองประเภท'),
                SizedBox(height: 16.0),
                T_Body(t: '       Max Heap: ค่าของแต่ละ Node มีค่ามากกว่า children จึงหมายความว่า ค่าสูงสุดของ heap นั้นก็คือ root node นั่นเองครับ'),
                SizedBox(height: 8.0),
                C_Img(img: 'W2C2/1'),
                SizedBox(height: 16.0),
                T_Body(t: '       และในทางกลับกันคือค่า Min Heap: ค่าของแต่ละ Node มีน้อยกว่า children จึงหมายความว่า ค่าต่ำสุดของ heap นั้นก็คือ root node เช่นกันครับ'),
                SizedBox(height: 8.0),
                C_Img(img: 'W2C2/2'),
                SizedBox(height: 16.0),
                T_Head(t: 'Heap - insert(x)'),
                SizedBox(height: 16.0),
                T_Body(t: '       เป็นค่าตัวใหม่ที่อยู่ใน node ล่างสุด เราจะต้องเพิ่ม node ที่เป็นไปได้เข้าไป ยกตัวอย่างเช่นเราจะ insert(2)'),
                SizedBox(height: 16.0),
                C_Img(img: 'W2C2/3'),
                C_Img(img: 'W2C2/4'),
                C_Img(img: 'W2C2/5'),
                T_Head(t: 'Heap - delete(x)'),
                SizedBox(height: 16.0),
                T_Body(t: '       เป็นค่าตัวใหม่ที่อยู่ใน node ล่างสุด เราจะต้องลบ node ที่เป็นไปได้เข้าไป ยกตัวอย่างเช่นเราจะ del(1)'),
                SizedBox(height: 16.0),
                C_Img(img: 'W2C2/6'),
                Center(child: T_Body(t: 'node 6 ย้ายมาแทนที่ 1')),
                SizedBox(height: 16.0),
                C_Img(img: 'W2C2/7'),
                Center(child: T_Body(t: 'เทียบ 6 กับ 2 , 4 และเลือก 2 มาแทนที่ 6')),
                SizedBox(height: 16.0),
                C_Img(img: 'W2C2/8'),
                Center(child: T_Body(t: 'เทียบ 6 กับ 3 , 5 และเลือก 3 มาแทนที่ 6')),
                SizedBox(height: 16.0),
                C_Img(img: 'W2C2/9'),
                Center(child: T_Body(t: 'เลือก 2 , 3 มาแทนเนื่องจากเป็นค่าที่น้อยที่สุด')),
              ],
            ),
          ),
        ));
  }
}