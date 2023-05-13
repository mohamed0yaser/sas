import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sas/app_color.dart';
import 'package:sas/home_screen.dart';
import 'package:sas/register/managers/login_cubit.dart';
import 'package:sas/register/social_media_button.dart';
import 'package:sas/text_form_feild.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var loginKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void initState() {
    super.initState();
    email.addListener(() {
      setState(() {}); // setState every time text changes
    });
    password.addListener(() {
      setState(() {}); // setState every time text changes
    });
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
      if (state is LoginSuccessState) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else if (state is LoginErrorState) {
        SnackBar snackBar = const SnackBar(content: Center(child: Text('Entry denied')));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }, builder: (context, state) {
      return SingleChildScrollView(
        child: Form(
          key: loginKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 45),
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
                InkWell(
                  onTap: () {
                    BlocProvider.of<LoginCubit>(context)
                        .login(email.text, password.text);
                  },
                   child: Container(
                     height: 38,
                     decoration: BoxDecoration(
                       color: AppColor.colorGreen,
                       borderRadius: BorderRadius.circular(5)
                     ),
                     child: state is LoginLoadingState
                        ? const Center(
                            child: CircularProgressIndicator(

                            color: Colors.white,
                          ))
                        : const Center(
                            child: Text('Login',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
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
    });
  }
}
