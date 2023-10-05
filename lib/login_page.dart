import 'package:flutter/material.dart';
import 'package:flutter_example1/main_with_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFC2A5DF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFC2A5DF),
          shadowColor: Colors.transparent,
          leading: IconButton(
            color: const Color(0xFF46178F),
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the previous page
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 80.0),
                Text(
                  "Kahoot Pirata",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 96.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF46178F),
                    shadows: <Shadow>[
                      Shadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                Text(
                  "ID",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 24.0,
                    color: const Color(0xFF46178F),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2.0,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    style: GoogleFonts.kumbhSans(
                      fontSize: 20.0,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      alignLabelWithHint: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF25076B),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2.0,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainMenuWithLogin()),
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
                      "Log in",
                      style: GoogleFonts.kumbhSans(
                        fontSize: 20.0,
                      ),
                    ),
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
