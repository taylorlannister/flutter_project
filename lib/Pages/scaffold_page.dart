import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/animated_list_page.dart';
import 'package:flutter_project/Pages/gardlist_page.dart';
import 'package:flutter_project/Pages/infinitegradview_page.dart';
import 'package:flutter_project/widgets/my_drawer.dart';

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({super.key});

  @override
  State<ScaffoldRoute> createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _selectedIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.share), onPressed: () {})
        ],
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: PageView(
        controller: _controller,
        children: const <Widget>[
          GradListPage(),
          AnimatedListRoute(),
          InfiniteGridView()
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
