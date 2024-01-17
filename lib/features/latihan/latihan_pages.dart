import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/authentication/widgets/loading_widget.dart';
import 'package:project/features/latihan/latihan_soal_pages.dart';
import 'package:project/features/latihan/latihan_soal_pages.dart';
import 'package:project/main.dart';
import 'package:project/styles/assets.dart';
import '../../styles/color.dart';
import '../../styles/text_styles.dart';
import '../../global_widgets/card_aplikasi_widget.dart';

class LatihanPages extends StatelessWidget {
  const LatihanPages({super.key});

  @override
  Widget build(BuildContext context) {
    final Stream<DocumentSnapshot> usersStream = FirebaseFirestore.instance
        .collection('users')
        .doc(auth.currentUser!.uid)
        .snapshots();

    return StreamBuilder<DocumentSnapshot>(
      stream: usersStream,
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Terjadi Kesalahan');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const AuthLoading();
        }
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Column(
                  children: [
                    const Spacer(),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: AppColor.primaryLightest,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                        child: Text(
                          'Yuk mulai asah kemampuan bahasa arab teman-teman',
                          style: TextStyles.headline4,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 20.0,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColor.primaryLightest,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Silahkan pilih materinya teman-teman",
                                  style: TextStyles.subtitle1,
                                ),
                                const SizedBox(height: 20.0),
                                CardProfile(
                                  title: "Latihan Karakter Rasulullah",
                                  subtitle:
                                      "Ayo latihan materi Karakter Rasulullah",
                                  icon: AppAssets.icMateri1,
                                  navigasi: () {                    
                                           Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LatihanSoalPages(
                                                materi: "karakter",                                              
                                              ),
                                            ),
                                            (route) => false,
                                          );                                        
                                  },
                                  color: AppColor.cardgreen,
                                ),
                                const SizedBox(height: 20.0),
                                CardProfile(
                                  title: "Latihan Profesi 1",
                                  subtitle:
                                      "Ayo latihan materi profesi kelas 7",
                                  icon: AppAssets.icMateri2,
                                  navigasi: (){
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LatihanSoalPages(
                                                materi: "profesi1",                                              
                                              ),
                                            ),
                                            (route) => false,
                                          );
                                        
                                  },
                                  color: AppColor.cardcokelat,
                                ),
                                const SizedBox(height: 20.0),
                                CardProfile(
                                  title: "Latihan Kata Benda",
                                  subtitle:
                                      "Ayo latihan materi Kata benda",
                                  icon: AppAssets.icMateri3,
                                  navigasi: () {
                                   
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LatihanSoalPages(
                                                materi: "katabenda",
                                               
                                              ),
                                            ),
                                            (route) => false,
                                          );
                                       
                                  },
                                  color: AppColor.cardpurple,
                                ),
                                const SizedBox(height: 20.0),
                                CardProfile(
                                  title: "Latihan Hewan Ternak",
                                  subtitle:
                                      "Ayo latihan materi hewan ternak",
                                  icon: AppAssets.icMateri4,
                                  navigasi: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LatihanSoalPages(
                                                materi: "hewanternak",
                                               
                                              ),
                                            ),
                                            (route) => false,
                                          );
                                       
                                  },
                                  color: AppColor.cardpink,
                                ),
                                const SizedBox(height: 20.0),
                                CardProfile(
                                  title: "Latihan Profesi 2",
                                  subtitle:
                                      "Ayo latihan materi profesi kelas 9",
                                  icon: AppAssets.icMateri2,
                                  navigasi: () {
                                   
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LatihanSoalPages(
                                                materi: "profesi2",
                                                
                                              ),
                                            ),
                                            (route) => false,
                                          );
                                        
                                  },
                                  color: AppColor.cardcokelat,
                                ),
                                const SizedBox(height: 20.0),
                                CardProfile(
                                  title: "Latihan Muannats & Mudzakkar",
                                  subtitle:
                                      "Ayo latihan materi Muannats & Mudzakkar",
                                  icon: AppAssets.icMateri5,
                                  navigasi: () {
                                      Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LatihanSoalPages(
                                                materi: "katabenda",
                                                
                                              ),
                                            ),
                                            (route) => false,
                                          );                                       
                                  },
                                  color: AppColor.cardbluelight,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
