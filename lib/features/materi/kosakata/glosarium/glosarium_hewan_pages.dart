import 'package:flutter/material.dart';
import 'package:project/features/materi/kosakata/glosarium/widget/glosarium_hewan.dart';

import 'package:project/styles/color.dart';
import 'package:project/styles/text_styles.dart';

import '../../../../global_widgets/card_ringkasan_widget.dart';

class GlosariumHewanPages extends StatelessWidget {
  const GlosariumHewanPages({super.key});

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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
          ),
          GlosariumHewan(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CardRingkasan(
              title: "Kalian Harus Tau",
              subtitle: "Maha suci allah dengan segala firmannya telah menciptakan beraneka macam hewan ternak yang telah memberi banyak manfaat untuk manusia seperti yang telah dijelaskan pada surat surat Al Mukminuun ayat 21",),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
