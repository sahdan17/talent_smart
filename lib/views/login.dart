import 'package:flutter/material.dart';
import 'package:talent_smart/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool isVisible = false;

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
                'Login Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please login with registered account',
                style: TextStyle(fontSize: 16, color: grey),
              ),
              SizedBox(
                height: 50,
              ),
              frmField(
                  'Email', txtEmail, 'Enter your email', Icons.email_outlined),
              SizedBox(
                height: 20,
              ),
              frmFieldPw(
                'Password',
                txtPassword,
                'Enter your password',
                Icons.lock_outline,
                isVisible,
                () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
              ),
              SizedBox(
                height: 150,
              ),
              btnLoginRegister(screenWidth, 'Login', () {
                setState(() {
                  Navigator.pushNamed(context, '/dashboard');
                });
              }),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, '/registration');
                        });
                      },
                      child: Text(
                        'Register',
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
