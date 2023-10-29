import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:muslims_app/constants.dart';
import 'package:muslims_app/widgets/content_item.dart';

class SyhabaView extends StatelessWidget {
  const SyhabaView({super.key});
  static const String id = "/SyhabaView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          "قصص الصحابة",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w800, color: kThirdColor),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 150,
              child: GridView.builder(
                clipBehavior: Clip.none,
                physics: const BouncingScrollPhysics(),
                itemCount: kSiraaContent.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.65,
                    mainAxisSpacing: 48,
                    crossAxisSpacing: 16,
                    crossAxisCount: 1),
                itemBuilder: (context, index) {
                  return ContentItem(
                    onTap: () {
                      Get.toNamed(kSiraaContent[index]);
                    },
                    contentName: kSiraaContent[index],
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
