import 'package:flair_pair/packages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlairPair',
      home: HomePage(), // Set HomePage as the home
    );
  }
}