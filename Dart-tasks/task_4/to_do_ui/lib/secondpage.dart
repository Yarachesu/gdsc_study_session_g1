import 'package:flutter/material.dart';
import 'package:to_do_ui/routes/route.dart';

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
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(
        children:[ 
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
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              color: Colors.white,
              child: ListTile(
                leading: Text(
                  "U",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text("April. 29,2023",textAlign:TextAlign.right,),
                title: Text(
                  "UI/UX App\n Design",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              color: Colors.white,
              child: ListTile(
                leading: Text(
                  "U",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text("April. 29,2023",textAlign:TextAlign.right,),
                title: Text(
                  "UI/UX App\n Design",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              color: Colors.white,
              child: ListTile(
                leading: Text(
                  "V",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text("April. 29,2023",textAlign:TextAlign.right,),
                title: Text(
                  "View candidates",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Card(
            
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              color: Colors.white,
              child: ListTile(
                leading: Text(
                  "F",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                title: Text(
                  "Football Cu\n Drybiling",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                
                subtitle: Text("April. 29,2023",textAlign:TextAlign.right,),
              ),
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
