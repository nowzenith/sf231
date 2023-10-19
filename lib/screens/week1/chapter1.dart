import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W1C1 extends StatefulWidget {
  const W1C1({super.key});

  @override
  State<W1C1> createState() => _W1C1State();
}

class _W1C1State extends State<W1C1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text("Data Representation"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: 'การแทนข้อมูล'),
                SizedBox(height: 16.0),
                T_Body(t: '       • การแทนข้อมูล หรือ Data Representation'),
                SizedBox(height: 8.0),
                T_Body(t: '       • ในทางคอมพิวเตอร์ คือการแทนข้อมูลด้วยเลขฐานสอง โดยมีค่าได้เพียงสองค่า คือ 0 หรือ 1 เท่านั้น'),
                SizedBox(height: 8.0),
                T_Body(t: '       • สำหรับคอมพิวเตอร์ เลข 0 และ 1 มีความหมายที่พิเศษ ตัวอย่างเช่น \n         0 หมายถึง เท็จ และ 1 หมายถึง จริง \n         0 หมายถึง ปิด และ 1 หมายถึง เปิด \n         0 หมายถึง ต่ำ และ 1 หมายถึง สูง'),
                SizedBox(height: 8.0),
                T_Head(t: 'ประเภทการแทนค่าข้อมูล'),
                SizedBox(height: 16.0),
                T_Body(t: '       • การแทนข้อมูลด้วย Barcode'),
                SizedBox(height: 8.0),
                T_Body(t: '       • การแทนข้อมูลด้วย Quick Response Code (QR Code)'),
                SizedBox(height: 8.0),
                T_Body(t: '       • การแทนข้อมูลด้วยรหัส ASCII'),
                SizedBox(height: 8.0),
                T_Body(t: '       • การแทนข้อมูลด้วย Unicode'),
                SizedBox(height: 8.0),
                T_Body(t: '       • การแทนข้อมูลเสียง'),
                SizedBox(height: 8.0),
                T_Body(t: '       • การแทนข้อมูลภาพ'),
                SizedBox(height: 8.0),
                T_Body(t: '       • การแทนข้อมูลด้วยเลขฐาน'),
                SizedBox(height: 8.0),
                T_Head(t: 'ตัวอย่างการแทนค่าข้อมูล'),
                SizedBox(height: 16.0),
                Center(child: T_Body(t: 'ตัวอย่างที่ 1')),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C1/1'),
                SizedBox(height: 16.0),
                Center(child: T_Body(t: 'ตัวอย่างที่ 2')),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C1/2'),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C1/3'),
                SizedBox(height: 16.0),
                Center(child: T_Body(t: 'ตัวอย่างที่ 3')),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C1/4'),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C1/5'),
                SizedBox(height: 16.0),
                C_Img(img: 'W1C1/6'),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ));
  }
}