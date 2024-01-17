import 'package:flutter/material.dart';
import 'package:project/features/materi/kosakata/glosarium/widget/glosarium_muanas.dart';

import 'package:project/styles/color.dart';
import 'package:project/styles/text_styles.dart';

import '../../../../global_widgets/card_ringkasan_widget.dart';

class GlosariumMuannasPages extends StatelessWidget {
  const GlosariumMuannasPages({super.key});

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
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Text("Laki-laki", style: TextStyles.subtitle2),
          // ),
          const GlosariumMuannas(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CardRingkasan(
              title: "Kalian Harus Tau",
              subtitle: "Kalian harus tau bahwa Mudzakkar adalah kata untuk laki-laki sementara Muannats adalah kata untuk perempuan. Perbedaan dari keduanya antara kata Benda muannats dan muzakkar yaitu adanya ta' marbuthah (ة) untuk muannats. ",),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
