import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:test_assignment/pages/login_page.dart'; // Add this package in pubspec.yaml

class OtpVerificationPage extends StatelessWidget {
  final String phoneNumber = "+91 7676286822";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FB),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/logo.png',
                  height: 60,
                ),
                SizedBox(height: 40),
                Container(
                  height: 800,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                    ),
                    border: Border.all(
                      color: const Color.fromARGB(255, 203, 206, 238),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 80),
                      Text(
                        "Whatsapp OTP Verification",
                        style: GoogleFonts.inter(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Please ensure that the email id mentioned is valid\nas we have sent an OTP to your email.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 16, 
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 20),
                      PinCodeTextField(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        length: 6,
                        appContext: context,
                        onChanged: (value) {},
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(12),
                          fieldHeight: 50,
                          fieldWidth: 50,
                          activeColor: Colors.blue,
                          selectedColor: Colors.blueAccent,
                          inactiveColor: Colors.grey.shade300,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        phoneNumber,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500, 
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 285),
                      Text.rich(
                        TextSpan(
                          text: "Didn't receive OTP code? ",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 16
                          ),
                          children: [
                            TextSpan(
                              text: "Resend OTP",
                              style: GoogleFonts.inter(
                                color: Colors.blue, 
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 33, 68, 243),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(vertical: 14),
                          ),
                        child: Text('Verify', 
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ],
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
