import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:muslims_app/views/ahadith_view.dart';
import 'package:muslims_app/views/azkar_view.dart';
import 'package:muslims_app/views/home_view.dart';
import 'package:muslims_app/views/masbaha_view.dart';
import 'package:muslims_app/views/quran_view.dart';
import 'package:muslims_app/views/siraa_view.dart';
import 'package:muslims_app/views/tafsser_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: HomeView.id, page: () => const HomeView()),
        GetPage(name: AzkarView.id, page: () => const AzkarView()),
        GetPage(name: TafsserView.id, page: () => const TafsserView()),
        GetPage(name: QuranView.id, page: () => const QuranView()),
        GetPage(name: AhadithView.id, page: () => const AhadithView()),
        GetPage(name: SiraaView.id, page: () => const SiraaView()),
        GetPage(name: MasbahaView.id, page: () => const MasbahaView()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Segoe UI",
      ),
      home: const HomeView(),
    );
  }
}
