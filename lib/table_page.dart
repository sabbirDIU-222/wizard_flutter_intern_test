import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      child: Text(
                        'Due',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Previous due',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Due',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text('2000 \$')
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
