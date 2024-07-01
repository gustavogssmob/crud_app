import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crud_app/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: GoogleFonts.abelTextTheme()),
      home: const Login(),
    );
  }
}
