import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFC2A5DF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Titulo
              RichText(
                text: TextSpan(
                  style: GoogleFonts.kumbhSans(
                    fontSize: 128.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF46178F),
                    shadows: <Shadow>[
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(0, 2),
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
              Text(
                "The worst AI-Driven shitty Kahoot rip-off",
                style: GoogleFonts.kumbhSans(
                  fontSize: 36.0,
                  color: Color(0xFF864CBF),
                ),
                textAlign: TextAlign.center,
              ),
              
              //Boton
              SizedBox(height: 80.0),
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here TODO: Redirect to login page
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF25076B),
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 40.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  "Log in",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
