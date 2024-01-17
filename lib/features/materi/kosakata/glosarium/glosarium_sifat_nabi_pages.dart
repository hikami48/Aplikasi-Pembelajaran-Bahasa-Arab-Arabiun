import 'package:flutter/material.dart';
import 'package:project/features/materi/kosakata/glosarium/widget/glosarium_sifat_nabi.dart';

import 'package:project/styles/color.dart';
import 'package:project/styles/text_styles.dart';

import '../../../../global_widgets/card_ringkasan_widget.dart';

class GlosariumSifatNabiPages extends StatelessWidget {
  const GlosariumSifatNabiPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.blackLight),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Materi", style: TextStyles.headline4),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          GlosariumSifatNabi(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CardRingkasan(
              title: "Kalian Harus Tau",
              subtitle: "Rasulullah mendapatkan karakter tersebut pada saat di perkampungan Bani Sa'ad",),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
