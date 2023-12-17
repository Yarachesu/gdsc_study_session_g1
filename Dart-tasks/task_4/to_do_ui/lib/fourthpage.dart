import 'package:flutter/material.dart';

class fourthPage extends StatefulWidget {
  const fourthPage({super.key});

  @override
  State<fourthPage> createState() => _fourthPageState();
}

class _fourthPageState extends State<fourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Task Detail",
            style: TextStyle(fontSize: 24, color: Colors.black87),
          ),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            size: 40,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 300,
                width: 400,
                child: Image.asset(
                  "assets/images/c.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Text("Title",
                  style: TextStyle(fontSize: 24), textAlign: TextAlign.left),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Card(
                  child: ListTile(
                    leading: Text("UI/UX App Design"),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text("Description",
                  style: TextStyle(fontSize: 24), textAlign: TextAlign.left),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Card(
                  child: ListTile(
                    leading: Text(
                        "First i have to animate the logo and \n then prototyping my design"),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text("Deadline",
                  style: TextStyle(fontSize: 24), textAlign: TextAlign.left),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Card(
                  child: ListTile(
                    leading: Text("April. 29,2023"),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
