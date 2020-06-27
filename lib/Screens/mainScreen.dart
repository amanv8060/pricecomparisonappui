import 'package:flutter/material.dart';
import 'package:pricecomparisonappui/Screens/favouriteScreen.dart';
import 'package:pricecomparisonappui/Screens/homeScreen.dart';
import 'package:pricecomparisonappui/Screens/profilePage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> pages;
  Widget currentPage;

  HomeScreen homePage;
  ProfileScreen profilePage;
  FavouriteScreen favouritePage;

  @override
  void initState() {
    super.initState();
    homePage = HomeScreen();
    profilePage = ProfileScreen();
    favouritePage = FavouriteScreen();
    pages = [
      homePage,
      favouritePage,
      profilePage,
    ];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            leading: IconButton(
              icon: Icon(Icons.person,color: Colors.black,),
              padding: EdgeInsets.only(top:40),
              onPressed: (){
                setState(() {
                  currentPage=profilePage;
                });
              },
            ),
            minWidth: 25,
            backgroundColor: Color(0xFF990033),
            groupAlignment: 1.0,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
                currentPage = pages[_selectedIndex];
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text("Home",style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text("Favourite",style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: currentPage,
          )
        ],
      ),
    );
  }
}
