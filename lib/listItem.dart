import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String itemText;
  final String item;

  ListItem(this.itemText,this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child:Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 5, bottom: 5,top:5),
                    child: Text(
                      '$itemText :',
                      style: TextStyle(
                          fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5, right: 10, bottom: 5,top:5),
                    child: Text(
                      '$item',
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ],
              ),
    );
  }
}