import 'package:flutter/material.dart';
import 'package:home_iot/src/widgets/card_device.dart';
import 'package:home_iot/src/widgets/tab_device.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  List mySmartDevices = [
    ["Smart Light", Icons.light, true],
    ["Smart AC", Icons.ac_unit, true],
    ["Smart TV", Icons.tv, false],
    ["Smart Fan", Icons.library_add, false],
  ];

  List<Widget> myTabs = [
    const TabDevice(icon: Icons.living_sharp, title: 'Living room'),
    const TabDevice(icon: Icons.kitchen_sharp, title: 'Kitchen'),
    const TabDevice(icon: Icons.bedroom_parent_sharp, title: 'Main bedroom'),
    const TabDevice(
        icon: Icons.bedroom_child_sharp, title: 'Secondary bedroom'),
    const TabDevice(icon: Icons.games_sharp, title: 'Game room'),
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: const Text(
              'Devices',
              style: TextStyle(color: Colors.black),
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                  itemBuilder: (context, index) {
                    return CardDevice(
                      name: mySmartDevices[index][0],
                      icon: mySmartDevices[index][1],
                      status: mySmartDevices[index][2],
                      onChanged: (value) => powerSwitchChanged(value, index),
                    );
                  },
                ),
              ),
              const Center(
                child: Text("It's rainy here"),
              ),
              const Center(
                child: Text("It's sunny here"),
              ),
              const Center(
                child: Text("It's sunny here"),
              ),
              const Center(
                child: Text("It's sunny here"),
              ),
            ],
          ),
        ));
  }
}
