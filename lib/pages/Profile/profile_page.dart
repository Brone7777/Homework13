import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(132.0),
            child: Container(
              width: 250.0,
              height: 250.0,
              child: Image.asset('assets/images/profile.png'),
            ),
          ),
          // ClipRRect(
          //   child: ImageFiltered(
          //     imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          //     child: Image.asset('assets/images/profile.png'),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              'Arinchai Sangjun',
              style: GoogleFonts.prompt(fontSize: 25.0),
            ),
          ),
          Text(
            'sangjun_a@silpakorn.edu',
            style: GoogleFonts.prompt(fontSize: 25.0, color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
