import 'package:flutter/material.dart';
import 'package:test_project/Screens/friends_invite.dart';
import 'package:test_project/Screens/messages.dart';
import 'package:test_project/Screens/passions.dart';
import 'package:test_project/Screens/swipe_option.dart';
import 'package:test_project/Screens/user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Passions(),
    );
  }
}
