import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';
import 'package:video_player/video_player.dart';

class W5C2 extends StatefulWidget {
  const W5C2({super.key});

  @override
  State<W5C2> createState() => _W5C2State();
}

class _W5C2State extends State<W5C2> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Proof"),
          backgroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: "Proof"),
                SizedBox(height: 16.0),
                T_Body(t: '       การพิสูจน์ทางตรง(Direct Proof) เป็นการพิสูจน์ข้อความในรูปแบบ p -> q โดยยอมรับว่า p เป็นจริง แล้วแสดงได้ว่า q เป็นจริง ดังนั้นจะได้ p -> q เป็นจริง'),
                SizedBox(height: 8.0),
                T_Body(t: 'ดังตัวอย่างต่อไปนี้\np -> q\np\n_____\n∴ q\n'),
                SizedBox(height: 16.0,),
                T_Head(t: "Contrapositive Proof"),
                SizedBox(height: 16.0),
                T_Body(t: '       การพิสูจน์แบบสลับที่เป็นการอธิบายกระบวนการแบบสลับที่ทำให้ statement ที่ต้องการพิสูจน์เป็นจริง โดยเราจะใช้ Rule of Inference (กฎการอนุมาณ) ในชื่อ Modus Tollens เพื่อนำมาใช้ในการอ้างเหตุผลทางตรรกศาสตร์ '),
                SizedBox(height: 8.0),
                T_Body(t: 'ดังตัวอย่างต่อไปนี้\np -> q\n~q\n_____\n∴ ~p\n'),
                SizedBox(height: 16.0,),
                T_Head(t: "Contradiction Proof"),
                SizedBox(height: 16.0),
                T_Body(t: '       เป็นการพิสูจน์ที่ตั้งใจให้เหตุเป็นเท็จ โดยใช้ทฤษฎีบทที่พิสูจน์แล้วเป็นจริงมาประกอบการ อ้างเหตุผลจนพบข้อความที่ขัดแย้งกับที่กำหนด จึงต้องปฏิเสธที่สมมติขึ้น'),
                SizedBox(height: 8.0),
                T_Body(t: 'ดังตัวอย่างต่อไปนี้\np -> q      (T)\n~q ∧ p      (F)\n_____\n∴ p -> q   (T)\n'),
                SizedBox(height: 16.0,),
              ],
            ),
          ),
        ));
  }
}