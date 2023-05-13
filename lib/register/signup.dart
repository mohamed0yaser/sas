import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sas/app_color.dart';
import 'package:sas/home_screen.dart';
import 'package:sas/register/managers/signup_cubit.dart';
import 'package:sas/register/social_media_button.dart';
import 'package:sas/text_form_feild.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var signUpKey = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController addField = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  void initState() {
    super.initState();
    firstName.addListener(() {
      setState(() {}); // setState every time text changes
    });
    lastName.addListener(() {
      setState(() {}); // setState every time text changes
    });
    addField.addListener(() {
      setState(() {}); // setState every time text changes
    });
    email.addListener(() {
      setState(() {}); // setState every time text changes
    });
    password.addListener(() {
      setState(() {}); // setState every time text changes
    });
    cPassword.addListener(() {
      setState(() {}); // setState every time text changes
    });
  }

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    addField.dispose();
    email.dispose();
    password.dispose();
    cPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        } else if (state is SignupErrorState) {
          SnackBar snackBar = const SnackBar(content: Center(child: Text('Entry denied')));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Form(
            key: signUpKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 45),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldWidget(
                          controller: firstName,
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
                          controller: lastName,
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
                    text: 'Add Your Field',
                    controller: addField,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return 'Field in Empty';
                      }
                      return null;
                    },
                    onChanged: (p0) {},
                  ),
                  TextFormFieldWidget(
                    text: 'E-mail',
                    controller: email,
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
                    controller: password,
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
                    controller: cPassword,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return 'Confirm Password is Empty';
                      }
                      return null;
                    },
                    onChanged: (p0) {},
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, HomeScreen())
                      BlocProvider.of<SignupCubit>(context).signup(
                          firstName.text,
                          lastName.text,
                          addField.text,
                          email.text,
                          password.text,
                          cPassword.text);
                    },
                    child: Container(
                      height: 38,
                      decoration: BoxDecoration(
                          color: AppColor.colorGreen,
                          borderRadius: BorderRadius.circular(5)),
                      child: state is SignupLoadingState
                          ? const Center(
                              child: CircularProgressIndicator(
                              color: Colors.white,
                            ))
                          : const Center(
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                    ),
                  ),
                  const Divider(),
                  const SocialMediaButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
