import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final Uri ticketsURL = Uri.parse('http://www.ticketleap.com');
  final Uri venderURL = Uri.parse('http://www.jotform.com');

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  child: Stack(
                    children: <Widget>[
                      Text(
                        'NWO Showdown',
                        style: GoogleFonts.raleway(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3
                            ..color = Colors.black,
                        ),
                      ),
                      Text(
                        'NWO Showdown',
                        style: GoogleFonts.raleway(
                          color: const Color.fromARGB(255, 250, 96, 186),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () async {
                        if (await canLaunchUrl(ticketsURL)) {
                          await launchUrl(
                              webOnlyWindowName: '_self', ticketsURL);
                        } else {
                          throw 'Could not launch $ticketsURL';
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(
                        Icons.arrow_right_alt_outlined,
                      ),
                      label: Stack(
                        children: [
                          Text(
                            'Tickets',
                            style: TextStyle(
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 3
                                ..color = Colors.black,
                            ),
                          ),
                          const Text(
                              // style: TextSty5le(
                              //   color: Colors.white,
                              // ),
                              'Tickets'),
                        ],
                      ),
                    ),
                    OutlinedButton.icon(
                      onPressed: () async {
                        if (await canLaunchUrl(venderURL)) {
                          await launchUrl(
                              webOnlyWindowName: '_self', venderURL);
                        } else {
                          throw 'Could not launch $venderURL';
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(
                        Icons.arrow_right_alt_outlined,
                      ),
                      label: Stack(
                        children: [
                          Text(
                            'Vender Form',
                            style: TextStyle(
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 3
                                ..color = Colors.black,
                            ),
                          ),
                          const Text(
                              // style: TextSty5le(
                              //   color: Colors.white,
                              // ),
                              'Vender Form'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
