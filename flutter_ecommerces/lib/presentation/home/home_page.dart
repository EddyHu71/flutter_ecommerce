import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ecommerces/presentation/home/dashboard/dashboard_page.dart';
import 'package:flutter_ecommerces/presentation/home/profile/profile_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  final _pages = [
    DashboardPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _selectedIndex = useState(1);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
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
