import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/presentation/core/appbars.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:flutter_ecommerces/presentation/home/dashboard/dashboard_page.dart';
import 'package:flutter_ecommerces/presentation/home/profile/profile_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  final int index = 0;
  HomePage({Key? key, int? index})
      : super(
          key: key,
        );

  final _pages = [
    DashboardPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _selectedIndex = useState(index);
    return Scaffold(
      appBar: AppBars.appBars(title: "Home"),
      body: _pages[_selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            _selectedIndex.value = index;
          },
          currentIndex: _selectedIndex.value,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
