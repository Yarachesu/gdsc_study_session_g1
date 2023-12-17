import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.people),
                title: Text("People"),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Calls"),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.perm_contact_cal),
                title: Text("Contacts"),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/a.jpg"),
                  ),
                  title: Text(
                    "pop",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("hi,pop how are you?"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 30),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/d.jpg"),
                  ),
                  title: Text(
                    "Redu",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("hi,redu how its going?"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 30),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/c.jpg"),
                  ),
                  title: Text(
                    "Shrek",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("hi,shrek whats going on?"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 30),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/b.jpg"),
                  ),
                  title: Text(
                    "dolly",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("hi,dolly how are you?"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 30),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/e.jpg"),
                  ),
                  title: Text(
                    "yada",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("hi,yada how are you?"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 30),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/f.jpg"),
                  ),
                  title: Text(
                    "Dere",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("hi,dere how are you?"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 30),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/h.jpg"),
                  ),
                  title: Text(
                    "Surafel",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("hi,surafel how are you?"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 30),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/i.jpg"),
                  ),
                  title: Text(
                    "wende",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("hi,wende how are you?"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
