import 'package:flutter/material.dart';
import 'package:mobile_ced/config/constant.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Image.asset(
              "asset/images/logo_kmutnb.png",
              width: size.width * 0.2,
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              "Welcome to KMUTNB",
              style: TextStyle(
                fontSize: 28,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: sfont,
                  ),
                  primary: pColor,
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('LOGIN'),
              onPressed: () {
                print("LOGIN!!");
                Navigator.pushNamed(context, 'login');
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: sfont,
                  ),
                  primary: sColor,
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('SIGNUP'),
              onPressed: () {
                print("LOGIN!!");
                Navigator.pushNamed(context, 'register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
