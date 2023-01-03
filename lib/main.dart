import 'package:flutter/material.dart';
import 'package:wizard_test_applicatin/table_page.dart';
import './drawer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      title: 'flutter Intern test',
      home: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu_rounded),
          //   onPressed: () {
          //     Scaffold.of(context).openDrawer();
          //   },
          // ),
          centerTitle: true,
          title: const Text(
            'Table data',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: TablePage(),
        drawer: Drawer(
          child: SafeArea(
              child: Column(
            children: [
              DrawerWidget(),
              ExpansionTile(
                childrenPadding: EdgeInsets.all(0),
                leading: Icon(Icons.shopping_cart),
                title: Transform.translate(
                  offset: Offset(-16, 0),
                  child: Text(
                    'Purchase',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                children: [
                  expandablelistitem(),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.shopping_bag),
                title: Transform.translate(
                  offset: Offset(-16, 0),
                  child: Text(
                    'Sell',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                children: [
                  expandablelistitem(),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.home_filled),
                title: Transform.translate(
                  offset: Offset(-16, 0),
                  child: Text(
                    'Stock / Inventory',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                children: [
                  expandablelistitem(),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }

  Widget expandablelistitem() {
    return InkWell(
      onTap: () => null,
      child: Container(
        padding: const EdgeInsets.only(right: 70.0),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'purchase list',
              style: TextStyle(color: Colors.teal, fontSize: 12),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'order list',
              style: TextStyle(color: Colors.teal, fontSize: 12),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'VAT list',
              style: TextStyle(color: Colors.teal, fontSize: 12),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Product unit',
              style: TextStyle(color: Colors.teal, fontSize: 12),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'purchase report',
              style: TextStyle(color: Colors.teal, fontSize: 12),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
