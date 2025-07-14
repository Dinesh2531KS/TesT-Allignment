import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_assignment/widgets/bottom_nav_bar.dart';
import 'package:test_assignment/widgets/drawer.dart';

class DashboardPiePage extends StatelessWidget {
  const DashboardPiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      drawer: CustomDrawer(),
      backgroundColor: const Color(0xFFF7F9FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text("Dashboard", style: GoogleFonts.inter(color: Colors.black)),
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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Test List Card
            Container(
              height: 110,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Test List", style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "50",
                                style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.blue),
                              ),
                              TextSpan(text: " CALLS", style: GoogleFonts.inter(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 70,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 33, 68, 243),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "S",
                          style: GoogleFonts.inter(
                            fontSize: 20, 
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 100),

            // Pie chart image as container background
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/chart.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),           
            SizedBox(height: 100  ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _statusCard("Pending", "28", const Color.fromARGB(255, 255, 228, 188), Colors.orange),
                _statusCard("Done", "22", const Color.fromARGB(255, 220, 255, 221), Colors.green),
                _statusCard("Schedule", "09", const Color.fromARGB(255, 252, 232, 255), Colors.purple),
              ],
            ),

            const SizedBox(height: 30),

            // Start Calling Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 68, 243),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child:  Text(
                "Star Calling Now",
                style: GoogleFonts.inter(
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _statusCard(String title, String count, Color bgColor, Color barColor) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: 5,
                  height: 50,
                  color: barColor,
                ),
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      title,
                      style:  GoogleFonts.inter(fontWeight: FontWeight.bold),
                    ),
                const SizedBox(height: 6),
                Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$count",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: " CALLS",
            style: GoogleFonts.inter(fontSize: 14),
          ),
        ],
      ),
    ),
  ],
)

              ],
            ),
          ],
        ),
      ),
    );
  }
