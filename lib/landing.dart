import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Landing extends StatefulWidget {
  const Landing({ Key? key }) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Color.fromARGB(255, 255, 0, 170),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(140, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
              height: 30,
              child: Stack(
                children: <Widget>[
                  Text(
                    style: GoogleFonts.raleway(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                    'Thank\'s for cliking my link, Sweetheart<3',
                  ),
                  Text(
                    style: GoogleFonts.raleway(
                      color: const Color.fromARGB(255, 250, 96, 186),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    'Thank\'s for cliking my link, Sweetheart<3',
                  ),
                ],
              )),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt_outlined,
            ),
            label: Stack(
              children: [
                Text(
                    style: TextStyle(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                    'Press the button'),
                const Text(
                    // style: TextSty5le(
                    //   color: Colors.white,
                    // ),
                    'Press the button'),
              ],
            ),
          ),
        ],
      ),
    ),
          ),
        ),
      );
  }
  }