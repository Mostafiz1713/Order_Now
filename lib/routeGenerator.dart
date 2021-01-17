import 'package:flutter/material.dart';
import 'package:order_now/Screens/mainScreen.dart';
import 'package:order_now/Screens/signInScreen.dart';
import 'package:order_now/Screens/signUpScreen.dart';

class RouteGenerator {
	static Route<dynamic> generateRoute(RouteSettings settings) {
		// Getting arguments passed in while calling Navigator.pushNamed
		final args = settings.arguments;

		switch (settings.name) {
			case '/':
				return MaterialPageRoute(builder: (_) => SignInScreen());
			case '/signInScreen':
				return MaterialPageRoute(builder: (_) => SignInScreen());
			case '/signUpScreen':
				return MaterialPageRoute(builder: (_) => SignUpScreen());
			case '/mainScreen':
				return MaterialPageRoute(builder: (_) => MainScreen());
				// If args is not of the correct type, return an error page.
				// You can also throw an exception while in development.
				return _errorRoute();
			default:
			// If there is no such named route in the switch statement, e.g. /third
				return _errorRoute();
		}
	}

	static Route<dynamic> _errorRoute() {
		return MaterialPageRoute(builder: (_) {
			return Scaffold(
				appBar: AppBar(
					title: Text('Error'),
				),
				body: Center(
					child: Text('ERROR'),
				),
			);
		});
	}
}