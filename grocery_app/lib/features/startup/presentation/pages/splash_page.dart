import 'package:flutter/material.dart';
import 'package:grocery_app/router/routing_variables.dart';
import 'package:grocery_app/shared/Helpers/image_helper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Navigation.splash1Page);
        },
        child: Container(
          color: Color.fromRGBO(1, 145, 2, 1),
          child: ImageHelper.getSvg('title'),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 50),
        ),
      ),
    );
  }
}
