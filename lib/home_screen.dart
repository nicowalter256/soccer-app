import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void showBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => StatefulBuilder(
        builder: (context, setStateSC) {
          return Container(
            width: MediaQuery.sizeOf(context).width,
            color: Colors.transparent,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: SizedBox(
                height: 600,
                width: MediaQuery.sizeOf(context).width,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: <Widget>[
                      Container(
                        constraints: const BoxConstraints(maxHeight: 150.0),
                        child: Material(
                          color: Colors.white,
                          child: TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorColor: Colors.black,
                            labelColor: Colors.black,
                            labelStyle: GoogleFonts.mulish(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            tabs: [
                              Tab(
                                text: 'PROFILE',
                              ),
                              Tab(
                                text: 'STATS',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Overview",
                                    style: GoogleFonts.mulish(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                            Text("Hello world!")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

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
                style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
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
          child: GestureDetector(
            onTap: () => {
              showBottomSheet(context),
            },
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
          ),
        )
      ]),
    );
  }
}
