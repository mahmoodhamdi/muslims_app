import 'package:flutter/material.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  static const String id = "/QuranView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("القرآن الكريم"),
      ),
    );
  }
}
