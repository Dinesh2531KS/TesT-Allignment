import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:test_assignment/pages/whatapp_verification_pg.dart';
import 'package:test_assignment/widgets/login_tf.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final whatsappController = TextEditingController();
  final mobileController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    whatsappController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 250, 252),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset('assets/images/logo.png'),
            SizedBox(height: 45),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: const Color.fromARGB(255, 203, 206, 238)),
                  right: BorderSide(color: const Color.fromARGB(255, 203, 206, 238)),
                  top: BorderSide(color: const Color.fromARGB(255, 203, 206, 238))
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                ),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 40,
                  right: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    Text('Welcome!',
                      style: GoogleFonts.inter(
                        fontSize: 42,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('Please register to continue',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 101, 101, 101),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 55,
                      child: CustomTextField(
                        label: "Name",
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        suffixIcon: Icons.person_outline,
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 55,
                      child: CustomTextField(
                      label: "Email",
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      suffixIcon: Icons.mail_outline,
                    ),),
                    SizedBox(height: 15),
                                        SizedBox(
                      height: 55,
                    child: CustomTextField(
                      label: "Password",
                      controller: passwordController,
                      obscureText: true,
                      suffixIcon: Icons.lock_outline,
                    ),
                    ),
                    SizedBox(height: 15),
                                        SizedBox(
                      height: 55,
                    child: CustomTextField(
                      label: "",
                      controller: whatsappController,
                      keyboardType: TextInputType.phone,
                      suffixIcon: Bootstrap.whatsapp,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Flag(
                                Flags.india, 
                                size: 25,
                            ),
                            Text(' +91',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                                        ),
                    SizedBox(height: 15),
                                        SizedBox(
                      height: 55,
                    child: CustomTextField(
                      label: "Mobile Number",
                      controller: mobileController,
                      keyboardType: TextInputType.phone,
                      suffixIcon: Icons.smartphone,
                    ),
                                        ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box_outline_blank),
                        SizedBox(width: 5),
                        Text('I agree to the ',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text('Terms and Conditions',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 33, 68, 243)
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account? ',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text('Sign In',
                          style: GoogleFonts.inter(
                            fontSize: 18  ,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 33, 68, 243)
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerificationPage()));
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 33, 68, 243),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(vertical: 14),
                          ),
                        child: Text('Sign Up', 
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ],
                  
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}