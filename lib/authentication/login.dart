// ignore_for_file: use_build_context_synchronously

import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project/authentication/widgets/login.dart';
import 'package:project/services/firebase_auth_services.dart';
import 'package:project/authentication/widgets/auth_page_widget.dart';
import 'package:project/authentication/widgets/loading_widget.dart';
import 'package:project/home_page.dart';

import '../styles/button_styles.dart';
import '../styles/color.dart';
import '../styles/text_styles.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _hidePassword = true;
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();
  final emailTextFieldController = TextEditingController();
  final passwordTextFieldController = TextEditingController();
  late FocusNode emailFocusNode, passwordFocusNode;

  @override
  void initState() {
    super.initState();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    emailTextFieldController.dispose();
    passwordTextFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const AuthLoading()
        : Material(
            child: SafeArea(
              child: Scaffold(
                backgroundColor: Colors.white,
                resizeToAvoidBottomInset: true,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: Text(
                    "Masuk",
                    style: TextStyles.headline4,
                  ),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: AppColor.blackLight),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                body: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              verticalSizedBox(20.0),
                              logoPage(),
                              verticalSizedBox(20.0),
                              textFieldLabel("Email"),
                              TextFormField(
                                // initialValue: "yahyafaisal21@gmail.com",
                                controller: emailTextFieldController,
                                autofocus: false,
                                focusNode: emailFocusNode,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
                                          color: AppColor.whiteDarkest)),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Email tidak boleh kosong";
                                  } else if (!EmailValidator.validate(value)) {
                                    return "Masukan email yang benar";
                                  }
                                  return null;
                                },
                              ),
                              textFieldLabel("Password"),
                              TextFormField(
                                // initialValue: "22-05-2001",
                                controller: passwordTextFieldController,
                                autofocus: false,
                                focusNode: passwordFocusNode,
                                obscureText: _hidePassword,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(_hidePassword
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(
                                          () => _hidePassword = !_hidePassword);
                                    },
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: AppColor.whiteDarkest,
                                    ),
                                  ),
                                ),
                                validator: (value) => value!.isEmpty
                                    ? "Password tidak boleh kosong"
                                    : null,
                              ),
                     
                               /*
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LupaPassword(),
                                      ),
                                    );
                                  },
                                  child: Text("Lupa Password?"),
                                ),
                              ),*/
                              verticalSizedBox(20),
                              Container(
                                padding: const EdgeInsets.only(bottom: 20),
                                width: double.infinity,
                                height: 70,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      setState(() => isLoading = true);
                                      String result =
                                          await AuthMethods().logInUser(
                                        email: emailTextFieldController.text,
                                        password:
                                            passwordTextFieldController.text,
                                      );
                                      if (result != "success") { // 
                                        setState(() => isLoading = false);
                                        ArtSweetAlert.show(
                                          context: context,
                                          artDialogArgs: ArtDialogArgs(
                                            type: ArtSweetAlertType.danger,
                                            title: "Email atau password salah",
                                            text: result,
                                          ),
                                        );
                                        return;
                                      }
                                      Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (_) => HomePage(
                                            callbackIndex: 0, // ngatur nav bar
                                          ),
                                        ),
                                        (route) => false,
                                      );
                                    }
                                  },
                                  style: PrimaryButtons
                                      .filledButtonStylePrimaryBase,
                                  child: Text(
                                    "MASUK",
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
                  ],
                ),
              ),
            ),
          );
  }
}
