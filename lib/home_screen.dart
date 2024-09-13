import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/background.png",
                ),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 70,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 50),
              Text(
                "Paul Dybala",
                style: GoogleFonts.mulish(color: Colors.white, fontSize: 30),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            height: 650,
            width: MediaQuery.sizeOf(context).width,
            child: Image.asset(
              "assets/paul.png",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 20,
          right: 20,
          child: Container(
            color: redColor,
            height: 50,
            child: Center(
              child: Text(
                "More stats".toUpperCase(),
                style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
