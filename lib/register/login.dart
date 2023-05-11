import 'package:flutter/material.dart';
import 'package:sas/home_screen.dart';
import 'package:sas/main_button.dart';
import 'package:sas/register/social_media_button.dart';
import 'package:sas/text_form_feild.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Form(
        key: loginKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45 , vertical: 45),
          child: Column(
            children: [
              TextFormFieldWidget(
                text: 'E-mail',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "E_mail must not be empty";
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {},
              ),
              SizedBox(height: size.height * 0.01),
              TextFormFieldWidget(
                text: 'Password',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password must not be empty";
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {},
              ),
              SizedBox(height: size.height * 0.01),
              MainButton(
                borderRadius: 5,
                onPressed: () {
                  if (loginKey.currentState!.validate()){
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }
                },
                text: 'Login',
              ),
              const Divider(),
              const SocialMediaButton(),
            ],
          ),
        ),
      ),
    );
  }
}
