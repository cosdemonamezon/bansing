import 'package:bansing/Screen/Home/HomeScreen.dart';
import 'package:bansing/Screen/News/NewsScreen.dart';
import 'package:bansing/Screen/Products/ProductsScreen.dart';
import 'package:bansing/Screen/Profile/ProfileScreen.dart';
import 'package:bansing/Screen/Tickets/TicketScreen.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatefulWidget {
  PageScreen({Key? key}) : super(key: key);

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  int selectedIndex = 0;
  final PageController controller = PageController();

  final List<Widget> screen = [
    HomeScreen(),
    NewsScreen(),
    ProductsScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Scaffold(    
        // extendBodyBehindAppBar: true, 
        extendBody: true,
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              currentScreen = HomeScreen();
              selectedIndex = 0;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          //color: Colors.green,
          clipBehavior: Clip.hardEdge,
          shape: CircularNotchedRectangle(),
          elevation: 25,
          notchMargin: 10,
          child: Container(
            height: size.height * 0.12,
            //color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: MaterialButton(
                    minWidth: size.width * 0.06,
                    onPressed: () {
                      setState(() {
                        currentScreen = NewsScreen();
                        selectedIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedIndex == 1
                            ? Image.asset(
                                'assets/icons/navi1.png',
                                height: size.height * 0.045,
                                color: Colors.blue,
                              )
                            : Image.asset(
                                'assets/icons/navi1_active.png',
                                height: size.height * 0.045,
                                color: Colors.blue,
                              ),
                        Text('ข่าว')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: MaterialButton(
                    minWidth: size.width * 0.06,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProductsScreen();
                        selectedIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedIndex == 2
                            ? Image.asset(
                                'assets/icons/navi2.png',
                                height: size.height * 0.045,
                                color: Colors.blue,
                              )
                            : Image.asset(
                                'assets/icons/navi2_active.png',
                                height: size.height * 0.045,
                                color: Colors.blue,
                              ),
                        Text('สินค้า')
                      ],
                    ),
                  ),
                ),
                SizedBox(width: size.width*0.08,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: MaterialButton(
                    minWidth: size.width * 0.06,
                    onPressed: () {
                      setState(() {
                        currentScreen = TicketScreen();
                        selectedIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedIndex == 3
                            ? Image.asset(
                                'assets/icons/navi3.png',
                                height: size.height * 0.045,
                                color: Colors.blue,
                              )
                            : Image.asset(
                                'assets/icons/navi3_active.png',
                                height: size.height * 0.045,
                                color: Colors.blue,
                              ),
                        Text('บัตร')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: MaterialButton(
                    minWidth: size.width * 0.06,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfileScreen();
                        selectedIndex = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedIndex == 4
                            ? Image.asset(
                                'assets/icons/navi5.png',
                                height: size.height * 0.045,
                                color: Colors.blue,
                              )
                            : Image.asset(
                                'assets/icons/navi5_active.png',
                                height: size.height * 0.045,
                                color: Colors.blue,
                              ),
                        Text('โปรไฟล์')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
