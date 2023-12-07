import 'package:flair_pair/packages.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: preferredSize.height,
      backgroundColor: const Color(0xFF160A1D),
      title: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'FLAIRPAIR',
              style: GoogleFonts.bungeeShade(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'Elevate Your Enjoyment.',
              style: GoogleFonts.archivoNarrow(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Raleway'
                ),
              ),
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.sports_bar,
              size: 16,
              color: Colors.black,
            ),
          ],
        ),
      ),
      centerTitle: false,
    );
  }
}
