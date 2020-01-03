import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const id = '/filter-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: MainDraw(),
      body: Center(
        child: Text('Filter'),
      ),
    );
  }
}
