import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/constants.dart';
import '../../core/style/app_colors.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_form_field.dart';
import '../home/home_screen.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login_background.png"),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.primaryLightColor,
          title: const Text("Login"),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(
              color: Colors.white
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomFormField(
                      controller: emailController,
                      label: "Email Address",
                      keyboard: TextInputType.emailAddress,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your email";
                        }
                        if (!isValidEmail(value)) {
                          return "enter valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    CustomFormField(
                      controller: passwordController,
                      isPassword: true,
                      label: "Password",
                      keyboard: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter your password";
                        }
                        if (value.length < 6) {
                          return "password should be at least 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 55.h),
                    CustomButton(label: "Login", onClick: login),
                    SizedBox(height: 10.h),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterScreen.routeName);
                        },
                        child: const Text(
                          "Or create new account",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  login() {
    if (formKey.currentState?.validate() == true) {
      Navigator.pushNamed(context, HomeScreen.routeName);
    }
  }
}
