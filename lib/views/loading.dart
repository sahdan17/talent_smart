import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromRGBO(70, 200, 145, 1),
        body: Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/onboard');
              },
              child: ClipRRect(
                child: Image.asset('assets/images/logofkik.png'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
