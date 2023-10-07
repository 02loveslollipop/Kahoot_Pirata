import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CreateGame());
}

class CreateGame extends StatelessWidget {
  const CreateGame({super.key});

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
                Text(
                  "CREATE GAME",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 96.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF46178F),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Theme",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF46178F),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  width: 300.0, // Set the maximum width
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
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kumbhSans(
                      fontSize: 24.0,
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      hintText: "Type your idea",
                      hintStyle: GoogleFonts.kumbhSans(
                        fontSize: 24.0,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Visibility",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 24.0,
                    color: const Color(0xFF46178F),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: DropdownButton<String>(
                    value: "Public", // Set the initial value
                    onChanged: (String? newValue) {
                      // Handle the selection
                    },
                    items: <String>["Public", "Private"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: GoogleFonts.kumbhSans(
                            fontSize: 24.0,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Number of questions",
                  style: GoogleFonts.kumbhSans(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF46178F),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 2.0,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: DropdownButton<int>(
                    value: 1, // Set the initial value
                    onChanged: (int? newValue) {
                      // Handle the selection
                    },
                    items: <int>[1, 3, 5, 10, 15].map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(
                          value.toString(),
                          style: GoogleFonts.kumbhSans(
                            fontSize: 24.0,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your "Generate" button logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE24104),
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
                    "Generate",
                    style: GoogleFonts.kumbhSans(
                      fontSize: 20.0,
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
