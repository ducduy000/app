import 'package:flutter/material.dart';
import 'package:untitled2/src/sizes.dart';
import 'package:untitled2/sign_up/signup_form_widget.dart';
import 'package:untitled2/sign_up/signup_footer_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/1.png',
                        height: 30.0,
                        width: 30.0,
                      )
                    ],
                  ),
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
