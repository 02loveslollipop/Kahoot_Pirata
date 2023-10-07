import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "create_game.dart";

class MainMenuWithLogin extends StatelessWidget {
  const MainMenuWithLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFC2A5DF),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Kahoot Pirata",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 96.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF46178F),
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(0, 2),
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "The worst AI-Driven\nshitty Kahoot rip-off",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF864CBF),
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20.0,
                  children: [
                    SizedBox(
                      width: 300.0,
                      child: ElevatedButton(
                        onPressed: () {
                          //"Create game" logic here
                          //Push to the create game page
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CreateGame()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC60929),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 40.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: Colors.black.withOpacity(0.2),
                          elevation: 5,
                        ),
                        child: Text(
                          "Create game",
                          style: GoogleFonts.kumbhSans(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300.0,
                      child: ElevatedButton(
                        onPressed: () {
                          // "See result" logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0542B9),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 40.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: Colors.black.withOpacity(0.2),
                          elevation: 5,
                        ),
                        child: Text(
                          "See result",
                          style: GoogleFonts.kumbhSans(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300.0, // Fixed width for the button
                      child: ElevatedButton(
                        onPressed: () {
                          // "Search game" logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD89E00),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 40.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: Colors.black.withOpacity(0.2),
                          elevation: 5,
                        ),
                        child: Text(
                          "Search game",
                          style: GoogleFonts.kumbhSans(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300.0, // Fixed width for the button
                      child: ElevatedButton(
                        onPressed: () {
                          //"See my games" logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF106B03),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 40.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          shadowColor: Colors.black.withOpacity(0.2),
                          elevation: 5,
                        ),
                        child: Text(
                          "See my games",
                          style: GoogleFonts.kumbhSans(
                            fontSize: 20.0,
                          ),
                        ),
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
