import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project/authentication/widgets/auth_page_widget.dart';
import 'package:project/main.dart';
import 'package:project/styles/assets.dart';
import 'package:project/styles/button_styles.dart';
import 'package:project/styles/color.dart';
import 'package:project/styles/text_styles.dart';

class LupaPassword extends StatefulWidget {
  const LupaPassword({super.key});

  @override
  State<LupaPassword> createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
  final TextEditingController emailTextFieldController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
        title: Text("Ubah Password", style: TextStyles.headline4),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSizedBox(20.0),
                Center(
                  child: Image.asset(
                    AppAssets.icResetPassword,
                    height: 180,
                  ),
                ),
                verticalSizedBox(20.0),
                textFieldLabel("Email"),
                TextFormField(
                  controller: emailTextFieldController,
                  autofocus: false,
                  enabled: true,
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
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await auth
                            .sendPasswordResetEmail(
                                email: emailTextFieldController.text.toString())
                            .then(
                          (value) async {
                            await auth.signOut();
                            ArtDialogResponse response =
                                await ArtSweetAlert.show(
                              barrierDismissible: false,
                              context: context,
                              artDialogArgs: ArtDialogArgs(
                                title: "Email Reset Password Terkirim",
                                text: "Cek email kamu buat ganti password",
                                confirmButtonText: "Ok",
                                type: ArtSweetAlertType.success,
                              ),
                            );

                            if (response.isTapConfirmButton) {
                              Navigator.of(context).pop();
                            } else {
                              return;
                            }
                          },
                        ).catchError((error) {
                          return ArtSweetAlert.show(
                            context: context,
                            artDialogArgs: ArtDialogArgs(
                              type: ArtSweetAlertType.warning,
                              title: "Terjadi Kesalahan",
                              text: "Gagal menyimpan hasil quiz",
                            ),
                          );
                        });
                      }
                    },
                    style: PrimaryButtons.filledButtonStylePrimaryBase,
                    child: Text(
                      "kirim".toUpperCase(),
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
      ),
    );
  }
}
