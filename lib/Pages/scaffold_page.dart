import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/Pages/bussiness_page.dart';
import 'package:flutter_project/Pages/home_page.dart';
import 'package:flutter_project/Pages/school_page.dart';
import 'package:flutter_project/Pages/scroll_controller.dart';
import 'package:flutter_project/Pages/scroll_notificationTestRoute.dart';
import 'package:flutter_project/widgets/my_drawer.dart';

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({super.key});

  @override
  State<ScaffoldRoute> createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _selectedIndex = 1;
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {})
        ],
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School')
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onAdd,
      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          ScrollControllerTestRoute(),
          SchoolPage()
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _controller.jumpToPage(index);
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}
