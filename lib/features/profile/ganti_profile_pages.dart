import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project/authentication/widgets/auth_page_widget.dart';
import 'package:project/authentication/widgets/loading_widget.dart';
import 'package:project/features/profile/ganti_karakter_pages.dart';
import 'package:project/features/profile/profile_pages.dart';
import 'package:project/home_page.dart';
import 'package:project/main.dart';
import '../../styles/button_styles.dart';
import '../../styles/color.dart';
import '../../styles/text_styles.dart';

class GantiProfile extends StatefulWidget {
  const GantiProfile({Key? key}) : super(key: key);

  @override
  State<GantiProfile> createState() => _GantiProfileState();
}

class _GantiProfileState extends State<GantiProfile> {
  final _formKey = GlobalKey<FormState>();
  final namaTextFieldController = TextEditingController();
  final emailTextFieldController = TextEditingController();

  late String avatar, name, email;

  late FocusNode namaFocusNode, emailFocusNode;

  @override
  void initState() {
    super.initState();
    namaFocusNode = FocusNode();
    emailFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    namaTextFieldController.dispose();
    emailTextFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Stream<DocumentSnapshot> usersStream = FirebaseFirestore.instance
        .collection('users')
        .doc(auth.currentUser!.uid)
        .snapshots();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.blackLight),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Ubah Profile", style: TextStyles.headline4),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: usersStream,
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Terjadi Kesalahan');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const AuthLoading();
          }

          avatar = snapshot.data?["avatar"];
          name = snapshot.data?["name"];
          email = snapshot.data?["email"];

          namaTextFieldController.text = name;
          emailTextFieldController.text = email;

          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSizedBox(20.0),
                    Center(
                      child: Image.asset(
                        "assets/avatar/$avatar",
                        height: 80,
                        width: 80,
                      ),
                    ),
                    verticalSizedBox(12.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GantiKarakterPages(
                                from: "profile",
                              ),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColor.primaryBase),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: const BorderSide(width: 2),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "GANTI AVATAR",
                          style: TextStyles.button.copyWith(
                            color: AppColor.blackBase,
                          ),
                        ),
                      ),
                    ),
                    textFieldLabel("Nama"),
                    TextFormField(
                      controller: namaTextFieldController,
                      autofocus: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: AppColor.whiteDarkest)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama tidak boleh kosong';
                        }
                        if (value.length < 5) {
                          return 'Nama minimal harus 5 huruf';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                    ),
                    textFieldLabel("Email"),
                    TextFormField(
                      controller: emailTextFieldController,
                      autofocus: false,
                      enabled: false,
                      focusNode: emailFocusNode,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide:
                                const BorderSide(color: AppColor.whiteDarkest)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email ga boleh kosong";
                        } else if (!EmailValidator.validate(value)) {
                          return "Email kamu ga valid";
                        }
                        return null;
                      },
                    ),
                    
                    verticalSizedBox(30.0),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          updateUser(
                            namaTextFieldController.text,
                            emailTextFieldController.text,
                            avatar,
                          );
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomePage(callbackIndex: 3,),                                          
                          ),
                        );
                        },
                        
                        style: PrimaryButtons.filledButtonStylePrimaryBase,
                        child: Text(
                          "SIMPAN",
                          style: TextStyles.button.copyWith(
                            color: AppColor.whiteBase,
                          ),
                        ),                      
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void updateUser(String nama, String email,  String avatar) {
    firestore
        .collection("users")
        .doc(auth.currentUser!.uid)
        .update({
          "name": namaTextFieldController.text,
          "email": emailTextFieldController.text,
          "avatar": avatar,
        })
        .catchError(
          (error) => ArtSweetAlert.show(
            context: context,
            artDialogArgs: ArtDialogArgs(
              type: ArtSweetAlertType.danger,
              title: "Gagal Mengupdate Avatar",
              text: "Terjadi Kesalahan\n $error",
            ),
          ),
        );
  }
}