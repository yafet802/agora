import 'package:flutter/material.dart';

class Prueba extends StatefulWidget {

  @override
  State<Prueba> createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter 5 ListView Horizontal'),
          backgroundColor: Colors.blue,
        ),
        body: Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // ListView 1
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Text('Item 1 ListView 1'),
                    Text('Item 2 ListView 1'),
                    Text('Item 3 ListView 1'),
                  ],
                ),
              ),
              // ListView 2
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Text('Item 1 ListView 2'),
                    Text('Item 2 ListView 2'),
                    Text('Item 3 ListView 2'),
                  ],
                ),
              ),
              // ListView 3
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Text('Item 1 ListView 3'),
                    Text('Item 2 ListView 3'),
                    Text('Item 3 ListView 3'),
                  ],
                ),
              ),
              // ListView 4
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Text('Item 1 ListView 4'),
                    Text('Item 2 ListView 4'),
                    Text('Item 3 ListView 4'),
                  ],
                ),
              ),
              // ListView 5
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Text('Item 1 ListView 5'),
                    Text('Item 2 ListView 5'),
                    Text('Item 3 ListView 5'),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}