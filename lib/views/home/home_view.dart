import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:muslims_app/constants.dart';
import 'package:muslims_app/widgets/content_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = '/HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondaryColor,
        centerTitle: true,
        title: Text(
          "✨صل على النبي",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w800, color: kPrimaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64),
        child: GridView.builder(
          shrinkWrap: true,
          clipBehavior: Clip.none,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: kContentList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 64, crossAxisSpacing: 16, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return ContentItem(
              onTap: () {
                Get.toNamed(kContentGetList[index]);
              },
              contentName: kContentList[index],
            );
          },
        ),
      ),
    );
  }
}
