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
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'FLAIRPAIR',
              style: GoogleFonts.bungeeShade(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 44,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'Elevate Your Enjoyment',
              style: GoogleFonts.archivoNarrow(
                textStyle: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 14,
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