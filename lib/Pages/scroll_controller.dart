import 'package:flutter/material.dart';

class ScrollControllerTestRoute extends StatefulWidget {
  const ScrollControllerTestRoute({super.key});

  @override
  State<ScrollControllerTestRoute> createState() =>
      _ScrollControllerTestRouteState();
}

class _ScrollControllerTestRouteState extends State<ScrollControllerTestRoute> {
  final ScrollController _controller = ScrollController(initialScrollOffset: 0);

  bool showToTopBtn = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller.addListener(() {
      print(_controller.offset);
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showToTopBtn == false) {
        showToTopBtn = true;
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('滚动控制'),
      ),
      body: Scrollbar(
        child: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0,
            controller: _controller,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('$index'),
              );
            }),
      ),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              child: const Icon(Icons.arrow_upward),
              onPressed: () {
                _controller.animateTo(.0,
                    duration: const Duration(milliseconds: 200), curve: Curves.ease);
              }),
    );
  }
}
