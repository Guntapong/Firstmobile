import 'package:flutter/material.dart';
import 'package:mobile_ced/backend/database.dart';
import 'package:mobile_ced/backend/database.dart';
import 'package:mobile_ced/config/constant.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email, password;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.alternate_email,
                      size: size.height * 0.05,
                    ),
                    hintText: "Email",
                  ),
                  onSaved: (value) {
                    email = value;
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      size: size.height * 0.05,
                    ),
                    hintText: "Password",
                  ),
                  onSaved: (value) {
                    password = value;
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  formKey.currentState!.save();
                  // print("$email $password");
                  var local = LocalDB();
                  local.Login(email, password).then((value) {
                    if (value) {
                      print('success');
                      Navigator.pushNamed(context, 'dashboard');
                    } else {
                      print('fail');
                      final bar = SnackBar(
                        content: Text('ไม่พบข้อมูล'),
                        backgroundColor: Colors.red[900],
                      );

                      ScaffoldMessenger.of(context).showSnackBar(bar);
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
