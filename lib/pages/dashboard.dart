import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_assignment/widgets/bottom_nav_bar.dart';
import 'package:test_assignment/widgets/calling_widget.dart';
import 'package:test_assignment/widgets/drawer.dart';

void showCallingListBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => const CallingListSheet(),
  );
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Color(0xFFF7F9FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Dashboard", style: GoogleFonts.inter(color: Colors.black)),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(
              'assets/images/help.png',
              color: Colors.black,
              scale: 4.5,
            ),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(
              'assets/images/bell.png',
              scale: 4.6,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 12)
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Welcome Card
            Container(
                height: 100,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFF2E58FF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        child: Image.asset(
                          'assets/images/profile.png'
                        )
                      ),
                      SizedBox(width: 12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello Swati", 
                            style: GoogleFonts.inter(
                              color: Colors.white, 
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              ),
                            ),
                          Text("Calley Personal", 
                            style: GoogleFonts.inter(
                              color: Colors.white, 
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            SizedBox(height: 20),

            // Load number container
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border(
                  top: BorderSide(color: Color(0xFF1E2D4F)),
                  left: BorderSide(color: Color(0xFF1E2D4F)),
                  right: BorderSide(color: Color(0xFF1E2D4F)),
                ),
              ),
              child: Image.asset('assets/images/calling_container.png'),
            ),
            SizedBox(height: 140),

            // Buttons Row
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showCallingListBottomSheet(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 33, 68, 243),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Star Calling Now",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
          ],
        ),
      ),

      // Bottom Nav Bar
      bottomNavigationBar: CustomBottomNavBar()
    );
  }
}
