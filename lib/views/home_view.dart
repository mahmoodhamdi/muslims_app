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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 132,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: kContentList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 64,
                    crossAxisSpacing: 16,
                    crossAxisCount: 2),
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
          ),
        ],
      ),
    );
  }
}
