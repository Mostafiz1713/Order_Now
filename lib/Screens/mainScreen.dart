import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:order_now/Screens/homePage.dart';
import 'package:order_now/Screens/orderPage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var message = 'Do you really want close?';
  int currentIndex = 0;
  List<Widget> pages;

  Widget currentPage;
  HomePage homePage;
  OrderPage orderPage;

  Widget _getIcon() {
    if (currentIndex > 0)
      return Icon(Icons.arrow_back_ios);
    else
      return Icon(Icons.exit_to_app);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    pages = [homePage, orderPage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: _getIcon(),
              onPressed: () {
                if (currentIndex == 0) {
                  SystemNavigator.pop();
                } else {
                  Navigator.of(context).pushNamed('/mainScreen');
                }
              })),
      endDrawer: Drawer(),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Order')),
        ],
      ),
    );
  }
}
