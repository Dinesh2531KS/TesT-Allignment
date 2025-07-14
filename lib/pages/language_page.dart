// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_assignment/pages/register_page.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String? _selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'title': 'English', 'greeting': 'Hi'},
    {'title': 'Hindi', 'greeting': 'नमस्ते'},
    {'title': 'Bengali', 'greeting': 'হ্যালো'},
    {'title': 'Kannada', 'greeting': 'ನಮಸ್ಕಾರ'},
    {'title': 'Punjabi', 'greeting': 'ਸਤ ਸ੍ਰੀ ਅਕਾਲ'},
    {'title': 'Tamil', 'greeting': 'வணக்கம்'},
    {'title': 'Telugu', 'greeting': 'హలో'},
    {'title': 'French', 'greeting': 'Bonjour'},
    {'title': 'Spanish', 'greeting': 'Hola'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('Choose Your Language',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.78,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    right: 50,
                    left: 40,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: ListView.builder(
                    itemCount: languages.length,
                    itemBuilder: (context, index) {
                      final lang = languages[index];
                      final isSelected = _selectedLanguage == lang['title'];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedLanguage = lang['title'];
                            });
                          },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      lang['title']!,
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                      ),
                                    ),  
                                    SizedBox(height: 2),
                                    Text(
                                      lang['greeting']!,
                                      style: GoogleFonts.inter(
                                        fontSize: 19,
                                        color: Colors.grey.shade700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                                color: isSelected ? Colors.black : Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 18),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 33, 68, 243),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: Text('Select', style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
