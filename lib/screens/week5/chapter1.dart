import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W5C1 extends StatefulWidget {
  const W5C1({super.key});

  @override
  State<W5C1> createState() => _W5C1State();
}

class _W5C1State extends State<W5C1> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Expression Tree"),
          backgroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: "Expression Tree"),
                SizedBox(height: 16.0),
                T_Body(t: '       เป็นการนำเอาโครงสร้างทรีไปใช้เก็บนิพจน์ทางคณิตศาสตร์โดยให้เป็นไบนารีทรีก่อนอื่นเราต้องรู้จักลำดับของเครื่องหมายกันก่อน\n1. ยกกำลัง (^)\n2. คูณ, หาร (*, /)\n3. บวก, ลบ (+, -)\nตัวอย่างเช่น a+((b-c)*d)'),
                SizedBox(height: 16.0),
                C_Img(img: 'W5C1/1'),
                SizedBox(height: 16.0),
                T_Body(t: '       Preorder- Root Left Right เทคนิคคือลากเส้นไปทางซ้ายของแต่ละ node และลากเส้นตามจะได้'),
                SizedBox(height: 16.0),
                C_Img(img: 'W5C1/2'),
                SizedBox(height: 16.0),
                T_Body(t: '       จะได้ Preorder: a b c d f g e'),
                SizedBox(height: 16.0),
                T_Body(t: '       Inorder- Left Root Right เทคนิคคือลากเส้นไปด้านล่างของแต่ละ node และลากเส้นตามจะได้'),
                SizedBox(height: 16.0),
                C_Img(img: 'W5C1/3'),
                SizedBox(height: 16.0),
                T_Body(t: '       จะได้ Inorder: b a f d g c e'),
                SizedBox(height: 16.0),
                T_Body(t: '       Postorder- Left Right Root เทคนิคคือลากเส้นไปทางขวาของแต่ละ node และลากเส้นตามจะได้'),
                SizedBox(height: 16.0),
                C_Img(img: 'W5C1/4'),
                SizedBox(height: 16.0),
                T_Body(t: '       จะได้ Postorder: b f g d e c a'),
              ],
            ),
          ),
        ));
  }
}