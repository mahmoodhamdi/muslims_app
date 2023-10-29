import 'package:flutter/material.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});
  static const String id = "/AzkarView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("الأذكار"),
      ),
    );
  }
}
