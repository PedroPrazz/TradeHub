import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tradehub/views/create_ad.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: const CreateAd(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          useMaterial3: false,
          textTheme: GoogleFonts.aboretoTextTheme()),
    ),
  );
}
