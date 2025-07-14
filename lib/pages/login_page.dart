// ignore_for_file: unused_element, unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_assignment/pages/page_5.dart';
import 'package:test_assignment/services/auth_service.dart';
import 'package:test_assignment/widgets/login_tf.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _whatsappController = TextEditingController();

  Future<void> _handleRegister() async => _submit(() => _auth.registerUser(_emailController.text, _passwordController.text));
  Future<void> _handleLogin() async => _submit(() => _auth.loginUser(_emailController.text, _passwordController.text));
  Future<void> _handleWhatsappVerify() async => _submit(() => _auth.verifyWhatsAppNumber(_whatsappController.text));

  Future<void> _submit(Future<Map<String, dynamic>> Function() action) async {
    setState(() => _isLoading = true);
    try {
      final res = await action();
      _showSnackbar('Success: ${res['message'] ?? 'OK'}');
    } catch (e) {
      _showSnackbar('Error: ${e}');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _showSnackbar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  final _auth = AuthService();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                    SizedBox(height: 45),

                    SizedBox(
                      height: 55,
                      child: CustomTextField(
                      label: "Email",
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      suffixIcon: Icons.mail_outline,
                    ),),
                    SizedBox(height: 15),
                                        SizedBox(
                      height: 55,
                    child: CustomTextField(
                      label: "Password",
                      controller: _passwordController,
                      obscureText: true,
                      suffixIcon: Icons.lock_outline,
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password?',
                          style: GoogleFonts.inter(
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
                    
                    SizedBox(height: 320),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don’t have an account? ',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text('Sign Up',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage()));
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 33, 68, 243),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(vertical: 14),
                          ),
                        child: Text('Sign In', 
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
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