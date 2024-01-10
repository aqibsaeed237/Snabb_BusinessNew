import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/addDataScreen/selectToAdd.dart';
import 'package:snabb_business/views/history/history.dart';
import 'package:snabb_business/views/homeScreen/dash_board.dart';
import 'package:snabb_business/views/profile/profile.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildScreens()[_currentIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 70, // Set the desired height of the bottom bar
              decoration: BoxDecoration(
                color: Colors.grey[200], // Set the desired background color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _navBarsItems(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _shouldShowBottomBar(int index) {
    return index >= 0 && index <= 4;
  }

  List<Widget> _buildScreens() {
    return [
      DashBoard(),
      DashBoard(),
      const SelectToAddDataScreen(),
      HistoryScreen(),
      const ProfileScreen(),
    ];
  }

  List<Widget> _navBarsItems() {
    return [
      _buildNavBarItem(Icons.home_outlined, 'Home', 0),
      _buildNavBarItem(Icons.query_stats, 'Stats', 1),
      _buildAddNavBarItem(),
      _buildNavBarItem(Icons.forum_outlined, 'History', 3),
      _buildNavBarItem(Icons.person_outline, 'Profile', 4),
    ];
  }

  Widget _buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 28,
              color: _currentIndex == index ? primaryBlueColor : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: _currentIndex == index ? primaryBlueColor : Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddNavBarItem() {
    return InkWell(
      onTap: () {
        print('Add button tapped');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryBlueColor,
              ),
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.white,
              ),
            ),
            Text(
              'Add',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
