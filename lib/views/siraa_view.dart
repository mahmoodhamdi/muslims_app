import 'package:flutter/material.dart';

class SiraaView extends StatelessWidget {
  const SiraaView({super.key});
  static const String id = "/SiraaView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("السيرة"),
      ),
    );
  }
}
