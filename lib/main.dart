import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media/constants.dart';
import 'package:social_media/screens/Feed/feed.dart';
import 'package:social_media/screens/welcome/welcome_screen.dart';
import 'package:social_media/services/auth_service.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => AuthNotifier(),
        child: MyApp(),
      )
    ],
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: Consumer<AuthNotifier>(builder: (context, notifier, child) {
        return notifier.user != null ? Feed() : WelcomeScreen();
      }),
    );
  }
}
