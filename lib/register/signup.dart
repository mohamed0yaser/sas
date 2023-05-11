import 'package:flutter/material.dart';
import 'package:sas/main_button.dart';
import 'package:sas/register/social_media_button.dart';
import 'package:sas/start/add_field.dart';
import 'package:sas/text_form_feild.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

TextEditingController fNameC = TextEditingController();
TextEditingController lNameC = TextEditingController();
TextEditingController emailC = TextEditingController();
TextEditingController passwordC = TextEditingController();
TextEditingController cPasswordC = TextEditingController();

class _SignupState extends State<Signup> {
  var signUpKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Form(
        key: signUpKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45 , vertical: 45),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormFieldWidget(
                      controller: fNameC,
                      text: 'First Name',
                      validator: (p0) {
                        if (p0 == null || p0.isEmpty) {
                          return 'First Name in Empty';
                        }
                        return null;
                      },
                      onChanged: (p0) {},
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormFieldWidget(
                      controller: lNameC,
                      text: 'Last Name',
                      validator: (p0) {
                        if (p0 == null || p0.isEmpty) {
                          return 'Last Name in Empty';
                        }
                        return null;
                      },
                      onChanged: (p0) {},
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.01),
              TextFormFieldWidget(
                text: 'E-mail',
                controller: emailC,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Email in Empty';
                  }
                  return null;
                },
                onChanged: (p0) {},
              ),
              SizedBox(height: size.height * 0.01),
              TextFormFieldWidget(
                text: 'Password',
                controller: passwordC,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Password is Empty';
                  }
                  return null;
                },
                onChanged: (p0) {},
              ),
              SizedBox(height: size.height * 0.01),
              TextFormFieldWidget(
                text: 'Confirm password',
                controller: cPasswordC,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Confirm Password is Empty';
                  }
                  return null;
                },
                onChanged: (p0) {},
              ),
              SizedBox(height: size.height * 0.01),
              MainButton(
                borderRadius: 5,
                onPressed: () {
                  Navigator.pushNamed(context, AddField.routeName);
                },
                text: 'Sign Up',
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
