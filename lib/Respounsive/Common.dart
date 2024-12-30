import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key, required this.hight, required this.width});
  final hight;
  final width;
  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  final String _instagramUrl =
      'https://www.instagram.com/magical_drone01?igsh=MW9yNjlvc3Z2Y2hxZg%3D%3D&utm_source=qr';
  final String _instagramUsername = 'your_username';

  Future<void> _launchInstagram() async {
    final Uri instagramUri;
    if (await canLaunchUrl(
        Uri.parse('instagram://user?username=$_instagramUsername'))) {
      instagramUri = Uri.parse('instagram://user?username=$_instagramUsername');
    } else {
      instagramUri = Uri.parse(_instagramUrl);
    }
    if (await canLaunchUrl(instagramUri)) {
      await launchUrl(instagramUri);
    } else {
      throw 'Could not launch $instagramUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeInUp(
          duration: Duration(milliseconds: 1900),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Social Connection",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: _launchInstagram,
                  child: Container(
                    height: widget.hight,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("Assets/instagram.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('2025 © Magical Drone'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Website designed by Pranav'),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image:
                        DecorationImage(image: AssetImage("Assets/LOGO.jpg"))),
              ),
            ],
          ),
        )
      ],
    );
  }
}
