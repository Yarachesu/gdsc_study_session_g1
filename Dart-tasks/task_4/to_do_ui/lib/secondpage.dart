import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_ui/model.dart';
import 'package:to_do_ui/routes/route.dart';
import 'package:to_do_ui/settings.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "Todo list",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.red),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(
                Icons.settings,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: 200,
                        child: Column(
                          children: [
                            Card(
                              child: ListTile(
                                title: Text(
                                  "Darktheme",
                                ),
                              ),
                            ),
                            Consumer<settings>(
                              builder: (context, value, child) {
                                return SwitchListTile(
                                  value: value.darktheem,
                                  onChanged: (newvalue) {
                                    setState(() {
                                      value.toggletheme();
                                    });
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 300,
                height: 200,
                child: Image.asset(
                  "assets/images/b.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Tasks list",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              users[index].title[0],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            users[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            users[index].date,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black45,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              height: 60,
                              width: 5,
                              color: containercolor[index],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                minWidth: 300,
                height: 40,
                color: Color.fromRGBO(251, 17, 0, 1),
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.third);
                },
                child: Text(
                  "Create tasks",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
