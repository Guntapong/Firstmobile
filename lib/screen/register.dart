import 'package:flutter/material.dart';
import 'package:mobile_ced/config/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurname(),
                txtpassword(),
                txtemail(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Name",
          icon: Icon(Icons.people),
          hintText: 'Input your name',
        ),
        validator: (value1) {
          if (value1!.isEmpty) {
            return 'กรุณากรอกข้อมูล';
          } else if (value1.length < 4) {
            return 'กรูณากรอกข้อมูลมากกว่า 4 ตัวอักษร';
          }
        },
        onSaved: (value1) {
          name = value1!.trim();
        },
      ),
    );
  }

  Widget txtSurname() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Surname",
          icon: Icon(Icons.people),
          hintText: 'Input your Surname',
        ),
        validator: (value2) {
          if (value2!.isEmpty) {
            return 'กรุณากรอกข้อมูล';
          } else if (value2.length < 4) {
            return 'กรูณากรอกข้อมูลมากกว่า 4 ตัวอักษร';
          }
        },
        onSaved: (value2) {
          surname = value2!.trim();
        },
      ),
    );
  }

  Widget txtpassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Password",
          icon: Icon(Icons.password),
          hintText: 'Input Password',
        ),
        obscureText: true,
        validator: (value3) {
          if (value3!.isEmpty) {
            return 'กรุณากรอกรหัสผ่าน';
          } else if (value3.length < 8) {
            return 'กรูณากรอกรหัสผ่านมากกว่า 8 ตัวอักษร';
          } else if (value3.contains('.') ||
              value3.contains('_') ||
              value3.contains('-') ||
              value3.contains('*') ||
              value3.contains('/') ||
              value3.contains('+')) {
            return 'ในรหัสผ่านห้ามมี . _ - * / +';
          }
        },
        onSaved: (value3) {
          password = value3!.trim();
        },
      ),
    );
  }

  Widget txtemail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Email",
          icon: Icon(Icons.email),
          hintText: 'Input your Email',
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value4) {
          if (!(value4!.contains('@'))) {
            return 'กรุณากรอกข้อมูลตามรูปแบบอีเมล';
          } else if (!(value4.contains('.'))) {
            return 'กรุณากรอกข้อมูลตามรูปแบบอีเมล';
          }
        },
        onSaved: (value4) {
          email = value4!.trim();
        },
      ),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () {
        if (formkey.currentState!.validate()) {
          formkey.currentState!.save();
          print("ชื่อ: $name นามสกุล: $surname รหัส: $password อีเมล: $email");
        }
      },
    );
  }
}
