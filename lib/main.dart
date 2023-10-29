import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:muslims_app/views/azkar/azkar_view.dart';
import 'package:muslims_app/views/hadith/ahadith_view.dart';
import 'package:muslims_app/views/home/home_view.dart';
import 'package:muslims_app/views/masbaha/masbaha_view.dart';
import 'package:muslims_app/views/quran/quran_view.dart';
import 'package:muslims_app/views/siraa/anbya_view.dart';
import 'package:muslims_app/views/siraa/other_qsass_view.dart';
import 'package:muslims_app/views/siraa/siraa_view.dart';
import 'package:muslims_app/views/siraa/syhaba_view.dart';
import 'package:muslims_app/views/siraa/tabeen_view.dart';
import 'package:muslims_app/views/tafsseer/tafsser_view.dart';

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
        GetPage(name: TabeenView.id, page: () => const TabeenView()),
        GetPage(name: SyhabaView.id, page: () => const SyhabaView()),
        GetPage(name: AnbyaView.id, page: () => const AnbyaView()),
        GetPage(name: OtherQassasView.id, page: () => const OtherQassasView()),
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
