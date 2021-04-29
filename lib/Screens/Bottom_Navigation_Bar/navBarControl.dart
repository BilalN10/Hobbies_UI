import 'package:flutter/material.dart';
import 'package:hobbies_ui_design/Screens/HomePage/HomePage.dart';
import 'package:hobbies_ui_design/SizeConfig/SizeConfig.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

//BuildContext testContext;

class ProvidedStylesExample extends StatefulWidget {
  final BuildContext menuScreenContext;
  ProvidedStylesExample({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _ProvidedStylesExampleState createState() => _ProvidedStylesExampleState();
}

class _ProvidedStylesExampleState extends State<ProvidedStylesExample>
    with TickerProviderStateMixin {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      HomePage(),
      HomePage(),
      HomePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 5 * SizeConfig.imageSizeMultiplier,
        icon: Icon(
          Icons.home,
        ),
        //title: ("Home"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
            // initialRoute: '/',
            // routes: {
            //   '/first': (context) => Home(),
            //   '/second': (context) => SelectDen,
            // },
            ),
      ),
      PersistentBottomNavBarItem(
        iconSize: 5 * SizeConfig.imageSizeMultiplier,
        icon: Icon(Icons.ac_unit),
        //title: ("Chat Box"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
            // initialRoute: '/',
            // routes: {
            //   '/first': (context) => Home(),
            // },
            ),
      ),
      PersistentBottomNavBarItem(
        iconSize: 5 * SizeConfig.imageSizeMultiplier,
        icon: Icon(Icons.my_library_books),
        //title: ("Appointments"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
            // initialRoute: '/',
            // routes: {
            //   '/first': (context) => Home(),
            // },
            ),
      ),
      PersistentBottomNavBarItem(
        iconSize: 5 * SizeConfig.imageSizeMultiplier,
        icon: Icon(Icons.account_circle),
        //  title: ("Profile"),
        activeColorPrimary: Colors.blue[100],
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
            // initialRoute: '/',
            // routes: {
            //   '/first': (context) => UserInfomationScreen(),
            // },
            ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      // drawer: Drawer(
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         const Text('This is the Drawer'),
      //       ],
      //     ),
      //   ),
      // ),
      body: PersistentTabView(
        context,

        popAllScreensOnTapOfSelectedTab: false,
        
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 150),
          curve: Curves.bounceInOut,
        ),

        decoration: NavBarDecoration(
            gradient: LinearGradient(colors: [Color(0xfff5c9a1), Colors.white]),
            colorBehindNavBar: Color(0xffeaebec),
            borderRadius: BorderRadius.circular(10),
            adjustScreenBottomPaddingOnCurve: false),
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),

        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: 8 * SizeConfig.heightMultiplier,
        hideNavigationBarWhenKeyboardShows: true,
        navBarStyle: NavBarStyle.style14,
        margin: EdgeInsets.all(10.0),
        // selectedTabScreenContext: (context) {
        //   testContext = context;
        // },
      ),
    );
  }
}
