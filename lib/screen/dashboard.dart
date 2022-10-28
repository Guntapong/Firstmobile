import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_ced/config/constant.dart';
import 'package:mobile_ced/model/activity.dart';

var data;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();

    callActivity();
  }

  Future<void> callActivity() async {
    //print("Hello");

    var url = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(url);
    setState(() {
      data = cedFromJson(response.body);
      print(data.activity);
      print(data.type);
      print(data.participants);
      print(data.price);
    });

    print(response.statusCode);
    print(response.body);
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menu Package'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(
                  'Image',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                leading: Icon(Icons.image_search),
                onTap: () {
                  print('Menu Image');
                  Navigator.pushNamed(context, 'image');
                },
              ),
              ListTile(
                title: Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                leading: Icon(Icons.map),
                onTap: () {
                  print('Menu Location');
                  Navigator.pushNamed(context, 'location');
                },
              ),
              ListTile(
                title: Text(
                  'Video',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                leading: Icon(Icons.video_collection_sharp),
                onTap: () {
                  print('Menu Video');
                  Navigator.pushNamed(context, 'video');
                },
              ),
              ListTile(
                title: Text(
                  'Store',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                leading: Icon(Icons.store_outlined),
                onTap: () {
                  print('Menu Store');
                  Navigator.pushNamed(context, 'store');
                },
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  print('Logout');
                  logout();
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, 'login');
                },
              ),
              ///////////////////////////////////// Music /////////////////////////////////////

              ///////////////////////////////////// Music /////////////////////////////////////
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.api),
              SizedBox(
                width: 10,
              ),
              Text('Dashboard'),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blueAccent,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Text(
                data?.activity ?? "กำลังโหลด",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Text(data?.type ?? ""),
            Text('${data?.participants ?? ""}'),
            Text('${data?.price ?? ""}'),
          ],
        ),
      ),
    );
  }
}
