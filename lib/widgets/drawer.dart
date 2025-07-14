import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_assignment/pages/settings_page.dart.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 920,
      child: Drawer(
        backgroundColor: const Color.fromARGB(255, 229, 238, 255),
        child: SafeArea(
          child: Column(
            children: [
              // User Profile Section
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF2E58FF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                     CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.yellow,
                      child: Image.asset('assets/images/profile.png'),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Row(
                          children: [
                            Text(
                              "Swati  ",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "•  Personal",
                              style: GoogleFonts.inter(
                                color: const Color.fromARGB(255, 255, 194, 103),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
      
                            
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          "swati@cstech.in",
                          style: GoogleFonts.inter(color: Colors.white70, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      
              const SizedBox(height: 16),
      
              // Menu Section
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _drawerItem(Icons.rocket_launch_outlined, "Getting Started"),
                    _drawerItem(Icons.sync, "Sync Data"),
                    _drawerItem(Icons.emoji_events_outlined, "Gamification"),
                    _drawerItem(Icons.call_outlined, "Send Logs"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsPage()));
                      },
                      child: _drawerItem(Icons.settings_outlined, "Settings")),
                    _drawerItem(Icons.help_outline, "Help?"),
                    _drawerItem(Icons.cancel_outlined, "Cancel Subscription"),
      
                    const SizedBox(height: 16),
                    const Divider(thickness: 1),
      
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text("App Info", style: GoogleFonts.inter(fontSize: 16,color: Color(0xFF2E58FF), fontWeight: FontWeight.w500)),
                    ),
      
                    _drawerItem(Icons.info_outline, "About Us"),
                    _drawerItem(Icons.privacy_tip_outlined, "Privacy Policy"),
                    _drawerItem(Icons.description_outlined, "Version 1.01.52"),
                    _drawerItem(Icons.share_outlined, "Share App"),
                    _drawerItem(Icons.logout, "Logout", color: Colors.red),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerItem(IconData icon, String title, {Color color = Colors.black}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
            width: 60,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: Icon(icon, color: Colors.black87, size: 23),
          ),
          const SizedBox(width: 12),
          Text(title, style: GoogleFonts.inter(fontSize: 16, color: color, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
