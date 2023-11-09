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
                T_Body(t: '       คนทำหาย @bame'),
                SizedBox(height: 16.0),
                
              ],
            ),
          ),
        ));
  }
}