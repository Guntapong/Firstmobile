import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CED'),
        ),
        body: Container(
          //color: Colors.green[300],
          //margin: EdgeInsets.all(15),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                right: 20,
                child: Text(
                  'Data1',
                  style: TextStyle(
                    fontSize: 48,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  'Data2',
                  style: TextStyle(
                    fontSize: 48,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
