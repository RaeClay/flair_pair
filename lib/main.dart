import 'package:flair_pair/packages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlairPair',
      home: HomePage(), // Set HomePage as the home
    );
  }
}