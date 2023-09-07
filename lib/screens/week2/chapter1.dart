import 'package:flutter/material.dart';
import 'package:my_ebook/widgets/chapter_wid.dart';

class W2C1 extends StatefulWidget {
  const W2C1({super.key});

  @override
  State<W2C1> createState() => _W2C1State();
}

class _W2C1State extends State<W2C1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Heap 1"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                T_Head(t: 'heap'),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ));
  }
}