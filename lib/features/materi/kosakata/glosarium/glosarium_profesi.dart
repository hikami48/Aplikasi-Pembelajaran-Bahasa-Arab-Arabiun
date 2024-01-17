import 'package:flutter/material.dart';
import 'package:project/features/materi/kosakata/glosarium/widget/glosarium_profesi.dart';

import 'package:project/styles/color.dart';
import 'package:project/styles/text_styles.dart';

import '../../../../global_widgets/card_ringkasan_widget.dart';

class GlosariumProfesiPages extends StatelessWidget {
  const GlosariumProfesiPages({super.key});

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
          GlosariumProfesi(),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CardRingkasan(
              title: "Kalian Harus Tau",
              subtitle: "Halo teman-teman kalian tau gak? Allah SWT menyuruh kepada hamba nya agar senantiasa bekerja untuk memenuhi kebutuhan hidupnya. Seperti yang dijelaskan pada surat At-Taubah ayat 105 ",),
          ),
          SizedBox(height: 20),
        ],

      ),
    );
  }
}
