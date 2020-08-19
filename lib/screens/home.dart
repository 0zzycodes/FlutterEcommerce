import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Carosel',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        type: BottomNavigationBarType.shifting,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/home.png"),
              height: 25,
              color: _currentTab == 0 ? AppColors.secondaryColor : Colors.black,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/shopping-bag.png"),
              height: 25,
              color: _currentTab == 1 ? AppColors.secondaryColor : Colors.black,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/search.png"),
              height: 25,
              color: _currentTab == 2 ? AppColors.secondaryColor : Colors.black,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/user.png"),
              height: 25,
              // color: _currentTab == 3 ? AppColors.secondaryColor : Colors.black,
            ),
            title: SizedBox.shrink(),
          ),
          _buildBag(),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBag() {
    return BottomNavigationBarItem(
      icon: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 35.0,
        width: 60,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(
                  'assets/icons/bag.png',
                ),
                height: 25,
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                "100",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      title: SizedBox.shrink(),
    );
  }
}
