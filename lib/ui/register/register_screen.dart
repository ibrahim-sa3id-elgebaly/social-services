import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import '../../core/style/app_colors.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_form_field.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = "register";

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordConfirmationController =
  TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryLightColor,
        title: const Text("Create Account"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
                    controller: fullNameController,
                    label: "Full Name",
                    keyboard: TextInputType.name,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.001),
                  CustomFormField(
                    controller: phoneController,
                    label: "Phone number",
                    keyboard: TextInputType.phone,
                    maxLength: 11,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your phone";
                      }
                      if(value.length<11){
                        return "Please enter valid phone number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  CustomFormField(
                    controller: ageController,
                    label: "age",
                    keyboard: TextInputType.number,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your age";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  CustomFormField(
                    controller: passwordController,
                    isPassword: true,
                    label: "Password",
                    keyboard: TextInputType.visiblePassword,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      if (value.length < 6) {
                        return "password should be at least 6";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  CustomFormField(
                    controller: passwordConfirmationController,
                    isPassword: true,
                    label: "Password confirmation",
                    keyboard: TextInputType.visiblePassword,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password confirmation";
                      }
                      if (value != passwordController.text) {
                        return "should be same as password";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  CustomButton(label: "Create Account", onClick: createAccount),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  createAccount(){
    if (formKey.currentState?.validate() == true){
      Navigator.pushNamed(context, LoginScreen.routeName);
    }
  }
}
