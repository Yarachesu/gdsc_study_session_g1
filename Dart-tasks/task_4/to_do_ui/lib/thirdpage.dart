import 'package:flutter/material.dart';
import 'package:to_do_ui/routes/route.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({super.key});

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.more_vert,
            size: 40,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Create new task",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.black45,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Main task name",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Card(
              child: ListTile(
                leading: Text(
                  "UI/UX App Design",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Due date",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Card(
              child: ListTile(
                leading: Text(
                  "April 29,2023 12:30 AM",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(left:40.0),
                  child: Icon(Icons.calendar_month_rounded,color: Colors.orange[400],),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Description",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Card(
              child: ListTile(
                leading: Text(
                  "first i have to animate and \nthen prototyping my design.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.fourth);
            },
            color: Color.fromARGB(255, 239, 16, 0),
            child: Text("Add task"),
            height: 40,
            minWidth: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
