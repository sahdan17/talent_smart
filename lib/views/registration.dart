import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:talent_smart/constant.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtPwConfirm = TextEditingController();

  bool isVisible1 = false;
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Start with create your account',
                style: TextStyle(fontSize: 16, color: grey),
              ),
              SizedBox(
                height: 50,
              ),
              frmField('Username', txtUsername, 'Create your username',
                  Icons.people),
              SizedBox(
                height: 20,
              ),
              frmField(
                  'Email', txtEmail, 'Enter your email', Icons.email_outlined),
              SizedBox(
                height: 20,
              ),
              frmFieldPw(
                'Password',
                txtPassword,
                'Create your password',
                Icons.lock_outline,
                isVisible1,
                () {
                  setState(() {
                    isVisible1 = !isVisible1;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              frmFieldPw(
                'Password Confirmation',
                txtPwConfirm,
                'Enter your password confirmation',
                Icons.lock_outline,
                isVisible2,
                () {
                  setState(() {
                    isVisible2 = !isVisible2;
                  });
                },
              ),
              SizedBox(
                height: 50,
              ),
              btnLoginRegister(screenWidth, 'Create Account', () {
                setState(() {
                  if (txtPassword.text == txtPwConfirm.text) {
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Konfirmasi password salah!')));
                  }
                });
              }),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, '/login');
                        });
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 14, color: grey),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
