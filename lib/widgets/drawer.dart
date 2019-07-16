import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SideDrawer();
  }
}

class _SideDrawer extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Container(
        color: Colors.blueGrey.shade900,
        child: Column(
          children: <Widget>[
            listTile('Products'),
            listTile('Inventory'),
            listTile('Payments'),
            listTile('Orders'),
            listTile('Advertising'),
            listTile('Reports'),
            listTile('More')
          ],
        ),
      ),
    );
  }

  Widget listTile(String title,) {
    return Column(children: [
      ListTile(
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w200),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.white,
          size: 18,
        ),
      ),
      SizedBox(
        height: 10,
      )
    ]);
  }
}
