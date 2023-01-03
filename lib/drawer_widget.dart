// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 115,
      // ignore: sort_child_properties_last
      decoration: BoxDecoration(
        color: Colors.teal[400],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                    alignment: Alignment(-16.0, 0.5),
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () => null,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment(-10.0, 0.0),
                      child: Text(
                        'Demo Limited Company',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 60,
                    height: 112,
                    decoration: BoxDecoration(
                        color: Colors.teal[500],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(70))),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 50,
                    height: 115,
                    decoration: BoxDecoration(
                        color: Colors.teal[500],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(70))),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
