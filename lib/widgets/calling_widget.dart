import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:test_assignment/pages/dashboard_2.dart';

void showCallingListBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => const CallingListSheet(),
  );
}

class CallingListSheet extends StatelessWidget {
  const CallingListSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 410,
            padding: const EdgeInsets.only(top: 12, bottom: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: const BoxDecoration(
                    color: Color(0xFF1E2D4F),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'CALLING LISTS',
                      style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Select Calling List Row
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                          height: 70,
                          width: 350,
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
                            Text(
                              '   Select Calling List',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                  
                        // Right side: arrow icon button
                        Container(
                      decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 33, 68, 243),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          BoxIcons.bx_refresh,
                          size: 28,
                          color: Colors.white,
                        ),
                        Text(' Refresh',
                          style: GoogleFonts.inter  (
                            color: Colors.white,  
                            fontSize: 18
                          ),
                        ),
                      ],
                    ),
                  ),
                      ],
                    ),
                  ),
                ),

                // Test List Row
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                          height: 70,
                          width: 350,
                      decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 247, 255),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: icon + text
                        GestureDetector(
                          onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardPiePage()));
                          },
                          child: Row(
                            children: [     
                              Text(
                                '   Test List',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
