import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';
import '../screens/tabs_screen.dart';

class MainDraw extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(icon, size: 26.0),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120.0,
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed(TabsScreen.id);
          }),
          buildListTile('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.id);
          }),
        ],
      ),
    );
  }
}
