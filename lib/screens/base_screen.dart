import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color.dart';
import 'package:flutter_application_1/constants/icons.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/screens/featured_screen.dart';


class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    // Add your other screens here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              icFeatured,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Image.asset(
              icFeaturedOutlined,
              height: kBottomNavigationBarItemSize,
            ),
            label: "Featured",
          ),
           BottomNavigationBarItem(
            activeIcon: Image.asset(
              icLearning,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Image.asset(
              icLearningOutlined,
              height: kBottomNavigationBarItemSize,
            ),
            label: "My Learning",
          // Add other BottomNavigationBarItem items here for your different screens
           ),
            BottomNavigationBarItem(
            activeIcon: Image.asset(
              icWishlist,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Image.asset(
              icWishlistOutlined,
              height: kBottomNavigationBarItemSize,
            ),
            label: "Wishlist",
            ),//tambahlagisatu
             BottomNavigationBarItem(
            activeIcon: Image.asset(
              icSetting,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Image.asset(
              icSettingOutlined,
              height: kBottomNavigationBarItemSize,
            ),
            label: "Settings",
             ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
