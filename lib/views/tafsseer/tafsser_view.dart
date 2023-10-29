import 'package:flutter/material.dart';

class TafsserView extends StatelessWidget {
  const TafsserView({super.key});
  static const String id = "/TafsserView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("التفسير"),
      ),
    );
  }
}
