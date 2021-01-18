import 'dart:async';
import 'package:flutter/material.dart';
import 'package:order_now/Constants/themes.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Themes.appBackground;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _versionName = 'V1.0';
  final splashDelay = 3;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushNamed('/signInScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.appBackground,
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/splash_logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 25,
                  ),
                  /*Expanded(
						  			flex: 7,
						  			child: Container(
						  					child: Column(
						  						mainAxisAlignment: MainAxisAlignment.center,
						  						children: <Widget>[
						  							Image.asset(
						  								'assets/images/splash_logo.png',
						  								height: MediaQuery.of(context).size.height,
						  								width: MediaQuery.of(context).size.height,
						  							),
						  							Padding(
						  								padding: const EdgeInsets.only(top: 10.0),
						  							),
						  							Column(
						  								children: <Widget>[
						  									CircularProgressIndicator(),
						  									Container(
						  										height: 10,
						  									),
						  									Row(
						  											mainAxisAlignment: MainAxisAlignment.spaceAround,
						  											children: <Widget>[
						  												Spacer(),
						  												Text(_versionName),
						  												Spacer(
						  													flex: 4,
						  												),
						  												Text('Weather App'),
						  												Spacer(),
						  											])
						  								],
						  							),
						  						],
						  					),),
						  		),*/
                  /*Expanded(
						  			child: Column(
						  				children: <Widget>[
						  					CircularProgressIndicator(),
						  					Container(
						  						height: 10,
						  					),
						  					Row(
						  							mainAxisAlignment: MainAxisAlignment.spaceAround,
						  							children: <Widget>[
						  								Spacer(),
						  								Text(_versionName),
						  								Spacer(
						  									flex: 4,
						  								),
						  								Text('Weather App'),
						  								Spacer(),
						  							])
						  				],
						  			),
						  		),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
