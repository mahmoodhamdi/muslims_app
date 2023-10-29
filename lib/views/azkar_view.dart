import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:muslims_app/constants.dart';
import 'package:muslims_app/widgets/content_item.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});
  static const String id = "/AzkarView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          "الأذكار",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w800, color: kThirdColor),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 150,
              child: GridView.builder(
                clipBehavior: Clip.none,
                physics: const BouncingScrollPhysics(),
                itemCount: kAzkarList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 64,
                    crossAxisSpacing: 16,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ContentItem(
                    onTap: () {
                      Get.toNamed(kContentGetList[index]);
                    },
                    contentName: kAzkarList[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
