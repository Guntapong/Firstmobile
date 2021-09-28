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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
