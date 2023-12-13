import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const CustomAppBar({Key? key, required this.titleText}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: preferredSize.height,
      backgroundColor: const Color(0xFF160A1D),
      title: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 20),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'assets/images/logo.png',  
                height: 75,  
                width: 75,   
              ),
            ),
            // Title Text
            Text(
              titleText,
              style: GoogleFonts.bungeeShade(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.sports_bar,
              size: 16,
              color: Colors.white,
            ),
          ],
        ),
      ),
      centerTitle: false,
    );
  }
}