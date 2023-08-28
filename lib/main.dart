import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 148),
            child: SvgPicture.asset(
              'assets/imgs/initImage.svg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Text(
              'Explore the app',
              style: GoogleFonts.poppins(
                  textStyle:
                      const TextStyle(color: kPrimaryColor, fontSize: 35),
                  fontWeight: bodyTitle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              'Now your security are in one place \n and always under control',
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.7),
                fontSize: 17,
              )),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: kPrimaryLightColor,
                      backgroundColor: kPrimaryColor,
                      fixedSize: const Size(353, 56),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {},
                  child: Text(
                    'Admin',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      color: kPrimaryLightColor,
                      fontSize: 16,
                    )),
                  ))),
          Padding(
              padding: const EdgeInsets.only(top: 14),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryLightColor,
                      fixedSize: const Size(353, 56),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {},
                  child: Text(
                    'Guard',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                    )),
                  ))),
        ],
      ),
    )));
  }
}
