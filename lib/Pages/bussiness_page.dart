import 'package:flutter/material.dart';

class BussinessPage extends StatefulWidget {
  const BussinessPage({super.key});

  @override
  State<BussinessPage> createState() => _BussinessPageState();
}

class _BussinessPageState extends State<BussinessPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Bussiness'),
      ),
    );
  }
}
