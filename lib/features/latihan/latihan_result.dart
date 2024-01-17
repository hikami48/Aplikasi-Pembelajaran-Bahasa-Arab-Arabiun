import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/authentication/widgets/auth_page_widget.dart';
import 'package:project/features/latihan/latihan_soal_pages.dart';
import 'package:project/home_page.dart';
import 'package:project/main.dart';
import 'package:project/styles/button_styles.dart';
import 'package:project/styles/color.dart';
import 'package:project/styles/text_styles.dart';

class LatihanResultPage extends StatelessWidget {
  const LatihanResultPage(
      {super.key,
      required this.score,
      required this.materi,
      required this.correctAnswer,
      required this.wrongAnswer,
      });

  final num score, correctAnswer, wrongAnswer;
  final String materi;

  @override
  Widget build(BuildContext context) {
    String detail = "";

    if (score >= 70) {
      detail = "Kamu Hebat";
    }else if (score >= 50 && score< 70){
      detail = "Ayo Berlatih Lagi";
    }
     else {
      detail = "Lebih Giat Lagi Ya Latihannya";
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSizedBox(70.0),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Selamat Kamu\nMendapatkan Nilai",
              style: TextStyles.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          verticalSizedBox(35.0),
          Container(
            height: 120,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(200.0),
                border: Border.all(width: 2)),
            child: Text(
              score.toString(),
              style: TextStyles.headline1,
            ),
          ),
          verticalSizedBox(35.0),
          Text(
            detail,
            style: TextStyles.headline4,
          ),
          verticalSizedBox(35.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Benar",
                    style: TextStyles.headline4,
                  ),
                  verticalSizedBox(20.0),
                  Text(
                    correctAnswer.toString(),
                    style: TextStyles.headline4,
                  ),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Salah",
                    style: TextStyles.headline4,
                  ),
                  verticalSizedBox(20.0),
                  Text(
                    wrongAnswer.toString(),
                    style: TextStyles.headline4,
                  ),
                ],
              ),
            ],
          ),
          verticalSizedBox(45.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () async {
                firestore
                    .collection("users")
                    .doc(auth.currentUser!.uid)  
                    .collection("latihan_history")
                    .add({
                      'correct': correctAnswer,
                      'wrong': wrongAnswer,
                      'materi': materi,
                      'detail': detail,
                      'score': score,
                      'datetime': FieldValue.serverTimestamp()
                    })
                    .then(
                      (value) => Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(callbackIndex: 1),
                          ),
                          (route) => false),
                    )
                    .catchError(
                      (error) => ArtSweetAlert.show(
                        context: context,
                        artDialogArgs: ArtDialogArgs(
                          type: ArtSweetAlertType.danger,
                          title: "Terjadi Kesalahan",
                          text: "Gagal menyimpan hasil latihan",
                        ),
                      ),
                    );
              },
              style: PrimaryButtons.filledButtonStylePrimaryBase,
              child: Text(
                "LANJUT",
                style: TextStyles.button.copyWith(
                  color: AppColor.whiteBase,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
