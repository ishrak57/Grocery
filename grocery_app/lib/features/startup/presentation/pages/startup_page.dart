import 'package:flutter/material.dart';
import 'package:grocery_app/features/startup/presentation/pages/splash_page.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  _StartupPageState createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  late Future future;
  bool? isLoggedIn;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            SplashPage(),
            // isLoggedIn == null ? CircularProgressIndicator() : (isLoggedIn == true ? SignUpPage() : HomePage()),
          ],
        ),
      ),
    );
  }
}
