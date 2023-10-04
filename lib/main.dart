import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Kahoot Pirata, a shitty AI-Driven Kahoot rip-off',
    home: MainNoSession(),
  ));
}

class MainNoSession extends StatelessWidget {
  const MainNoSession({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0xFFC2A5DF),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Titulo
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.kumbhSans(
                      fontSize: 96.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF46178F),
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0, 2),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: "Kahoot Pirata",
                      ),
                    ],
                  ),
                ),
                //Subtitulo
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.kumbhSans(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF864CBF),
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "The worst AI-Driven shitty Kahoot rip-off",
                          style: TextStyle(
                            overflow: TextOverflow.clip,
                          )),
                    ],
                  ),
                ),
                //Boton
                const SizedBox(height: 80.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogIn()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF25076B),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 40.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    "Start",
                    style: GoogleFonts.kumbhSans(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Define named routes
        routes: {
          '/login': (context) => const LogIn(),
        });
  }
}
