import 'package:appjob/model/user_model.dart';
import 'package:appjob/pages/onboarding_page.dart';
import 'package:appjob/pages/splash_page.dart';
import 'package:appjob/provider/auth_provider.dart';
import 'package:appjob/provider/user-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/onboarding': (context) => OnboardingPage(),
        },
      ),
    );
  }
}
