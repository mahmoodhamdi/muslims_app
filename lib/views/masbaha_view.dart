import 'package:flutter/material.dart';

class MasbahaView extends StatelessWidget {
  const MasbahaView({super.key});
  static const String id = "/MasbahaView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("المسبحة"),
      ),
    );
  }
}
