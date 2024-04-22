import 'package:flutter/material.dart';
import 'package:talent_smart/views/dashboard.dart';
import 'package:talent_smart/views/loading.dart';
import 'package:talent_smart/views/login.dart';
import 'package:talent_smart/views/onboard.dart';
import 'package:talent_smart/views/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      // supportedLocales: [
      //   const Locale('id'),
      //   const Locale('ID'),
      // ],
      //menghilangkan tulisan debug pada aplikasi
      debugShowCheckedModeBanner: false,

      //initial route ke login, berfungsi agar ketika
      //masuk ke aplikasi akan langsung ke route login
      // initialRoute: '/dashboard',
      // initialRoute: '/registration',
      // initialRoute: '/onboard',
      // initialRoute: '/loading',
      initialRoute: '/login',

      //routes berfungsi menginisiasi alamat dari semua page
      routes: {
        '/registration': (context) => RegistrationPage(),
        '/login': (context) => LoginPage(),
        '/onboard': (context) => OnBoardPage(),
        '/loading': (context) => LoadingPage(),
        '/dashboard': (context) => DashboardPage(),
      },
    );
  }
}
