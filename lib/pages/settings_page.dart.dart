import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:test_assignment/widgets/calling_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: Text("Setting", 
          style: GoogleFonts.inter(
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Header Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E58FF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Image.asset('assets/images/profile.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello Swati", 
                              style: GoogleFonts.inter(
                                color: Colors.white, 
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("swati@cstech.in", 
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("9971125588", 
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Parent Account: NA", 
                              style: GoogleFonts.inter(
                                color: Colors.white, 
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Current Subscription: Calley Personal",
                              style: GoogleFonts.inter(
                                color: Colors.white, 
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Profile Settings Section
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: const BoxDecoration(
                          color: Color(0xFF1E2D4F),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'PROFILE SETTINGS',
                            style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 70,
                        width: 300,
                    decoration: BoxDecoration(
    color: const Color.fromARGB(255, 232, 247, 255),
    borderRadius: BorderRadius.circular(12),
  ),
  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // Left side: icon + text
      Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: Icon(Icons.language, size: 20), // Replace with Clarity.world_line if using ClarityIcons
          ),
          SizedBox(width: 10),
          Text(
            'App Language',
            style: GoogleFonts.inter(fontSize: 16),
          ),
        ],
      ),

      // Right side: arrow icon button
      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 2,
                              color: Colors.black
                            )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {
                                // action
                              },
                              icon: Icon(FontAwesome.arrow_right_solid, size: 18),
                            ),
                          ),
                        ),
    ],
  ),
),

                      SizedBox(height: 15),
                      Container(
                        height: 70,
                        width: 300,
                    decoration: BoxDecoration(
    color: const Color.fromARGB(255, 232, 247, 255),
    borderRadius: BorderRadius.circular(12),
  ),
  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // Left side: icon + text
      Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: Icon(TeenyIcons.password, size: 20), // Replace with Clarity.world_line if using ClarityIcons
          ),
          SizedBox(width: 10),
          Text(
            'Change Password',
            style: GoogleFonts.inter(fontSize: 16),
          ),
        ],
      ),

      // Right side: arrow icon button
      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 2,
                              color: Colors.black
                            )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {
                                // action
                              },
                              icon: Icon(FontAwesome.arrow_right_solid, size: 18),
                            ),
                          ),
                        ),
    ],
  ),
),
                
                    ],
                  ),
                ),
                const SizedBox(height: 300),

                // Button to open sheet
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 10,
                    height: 10,
                    child: ElevatedButton(
                      onPressed: () => showCallingListBottomSheet(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text("Open Calling List"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
