import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/authentication/widgets/loading_widget.dart';
import 'package:project/main.dart';
import 'package:project/styles/assets.dart';
import 'package:project/global_widgets/card_aplikasi_widget.dart';
import 'package:project/authentication/widgets/auth_page_widget.dart';
import 'package:project/features/materi/kosakata/model/materi_list.dart';
import 'package:project/features/materi/kosakata/widget/card_kosakata.dart';
import '../../styles/color.dart';
import '../../styles/text_styles.dart';

class MateriPages extends StatefulWidget {
  const MateriPages({super.key});

  @override
  State<MateriPages> createState() => _MateriPagesState();
}

class _MateriPagesState extends State<MateriPages> {
    late List items;

  @override
  void initState() {
    super.initState();
    items = MateriList.materiList;
  }

  @override
  void dispose() {
    super.dispose();
    
  }


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
          child: Scaffold(//
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/avatar/${snapshot.data?["avatar"]}",
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Selamat datang kembali,',
                                  style: TextStyles.headline4,
                                ),
                                Text(
                                  "${snapshot.data?["name"]} 👋",
                                  style: TextStyles.headline4,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
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
                            Container(                        
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Text(
                          'Yuk mulai asah kemampuan bahasa arab teman-teman',
                          style: TextStyles.subtitle1,
                        ),
                      ),                         
                            verticalSizedBox(24.0),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: items.length,
                              itemBuilder: (BuildContext context, int index) {
                                debugPrint(items[index]['firestore_col']);
                                return CardKosakata(
                                  title: items[index]["title"],
                                  subtitle: items[index]["subtitle"],
                                  column: items[index]['firestore_col'],
                                  icon: items[index]["icons"],
                                  kelas: items[index]["class"],
                                  listLength: items[index]['listLength'],
                                  navigasi: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => items[index]["navigation"],
                                      ),
                                    );
                                  },
                                  color: items[index]["card_color"],
                                );
                              },
                            ),
                          ],
                        ),
                      )
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
