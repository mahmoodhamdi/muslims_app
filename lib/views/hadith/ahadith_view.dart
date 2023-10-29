import 'package:flutter/material.dart';

class AhadithView extends StatelessWidget {
  const AhadithView({super.key});
  static const String id = "/AhadithView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("الحديث"),
      ),
    );
  }
}
