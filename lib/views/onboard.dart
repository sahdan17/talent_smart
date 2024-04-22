import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:talent_smart/constant.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  List<String> imageUrls = [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic3.jpg',
  ];

  List<String> textPic = [
    'Various Collection of Latest Product',
    'Various Collection of Latest Product',
    'Various Collection of Latest Product'
  ];

  List<String> textSecPic = [
    'Various Collection of Latest Product',
    'Various Collection of Latest Product',
    'Various Collection of Latest Product'
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: SizedBox(
                  height: 480,
                  child: LoopPageView.builder(
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(imageUrls[index],
                                  fit: BoxFit.cover)),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              textPic[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          if (index == 0)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                dotTrue(),
                                SizedBox(
                                  width: 10,
                                ),
                                dotFalse(),
                                SizedBox(
                                  width: 10,
                                ),
                                dotFalse(),
                              ],
                            ),
                          if (index == 1)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                dotFalse(),
                                SizedBox(
                                  width: 10,
                                ),
                                dotTrue(),
                                SizedBox(
                                  width: 10,
                                ),
                                dotFalse(),
                              ],
                            ),
                          if (index == 2)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                dotFalse(),
                                SizedBox(
                                  width: 10,
                                ),
                                dotFalse(),
                                SizedBox(
                                  width: 10,
                                ),
                                dotTrue(),
                              ],
                            ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            textSecPic[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              btnLoginRegister(screenWidth, 'Create Account', () {
                setState(() {
                  Navigator.pushNamed(context, '/registration');
                });
              }),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, '/login');
                    });
                  },
                  child: Text(
                    'Already Have an Account',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
