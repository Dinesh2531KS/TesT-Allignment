import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:test_assignment/pages/dashboard.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CallPage extends StatefulWidget {
  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=l36rG4HafMg', // Replace with your URL
      )!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FB),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // User greeting card
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

              // Instruction & Video
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFF1E2D4F),
                ),
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(
                      "If you are here for the first time then ensure that\n"
                      "you have uploaded the list to call from calley Web\n"
                      "Panel hosted on https://app.getcalley.com",
                      style: GoogleFonts.inter(color: Colors.white, fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: YoutubePlayer(
                        controller: _youtubeController,
                        showVideoProgressIndicator: true,
                        progressColors: ProgressBarColors(
                          playedColor: Colors.blue,
                          handleColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),

              // Buttons
              Row(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // WhatsApp action
                      },
                      icon: Icon(
                        MingCute.whatsapp_fill,
                        size: 25, 
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                    SizedBox(
                      width: 352,
                      height: 60,
                      child: Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
                          },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 33, 68, 243),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.symmetric(vertical: 14),
                            ),
                          child: Text('Start Calling Now', 
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
