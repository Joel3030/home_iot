import 'package:flutter/material.dart';
import 'package:home_iot/src/led/led_page.dart';
import 'package:home_iot/src/pages/devices_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final List<Widget> screens = [const LedPage(), const DevicesPage()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const DevicesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(bucket: bucket, child: currentScreen),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const LedPage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.dashboard,
                            color: Colors.grey,
                          ),
                          Text('Dashboard')
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const DevicesPage();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.devices,
                            color: Colors.grey,
                          ),
                          Text('Devices')
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          ),
                          Text('Favorites')
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.menu,
                            color: Colors.grey,
                          ),
                          Text('Menu')
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
