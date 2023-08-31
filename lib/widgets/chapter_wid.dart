import 'package:flutter/material.dart';

class T_Head extends StatelessWidget {
  const T_Head({
    super.key,
    required this.t,
  });

  final String t;

  @override
  Widget build(BuildContext context) {
    return Text(
      t,
      style: const TextStyle(
        fontSize: 20.0,
        height: 1.5,
      ),
    );
  }
}

class T_Body extends StatelessWidget {
  const T_Body({
    super.key,
    required this.t,
  });

  final String t;

  @override
  Widget build(BuildContext context) {
    return Text(
      t,
      style: const TextStyle(
        fontSize: 16.0,
        height: 1.5,
      ),
    );
  }
}

class C_Img extends StatelessWidget {
  const C_Img({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage('assets/images/$img.png'),
      ),
    );
  }
}

class C_Gif extends StatelessWidget {
  const C_Gif({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage('assets/images/$img.gif'),
      ),
    );
  }
}