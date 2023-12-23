import 'dart:math';

import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List icons = [
    Icons.monitor_heart_outlined,
    Icons.science_outlined,
    Icons.history_edu,
    Icons.schema_outlined,
    Icons.cast_for_education,
  ];
  List assetImages = [
    "assets/a.jpg",
    "assets/bc.jpg",
    "assets/c.jpg",
    "assets/d.jpg",
    "assets/ef.jpg",
    "assets/f.jpg",
  ];
  List imageName = [
    "Fiker eske\n mekabir",
    "Andromeda principle\n of ethiopia",
    "Birekrikta",
    "Reach dad\npoor dad",
    "Man search\nfor meaning",
    "Roots"
  ];

  List text = [
    "Health",
    "Science",
    "technology",
    "History",
    "Philosophy",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.sort,
            color: Colors.black,
            size: 40,
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "GDSC BOOKSTORE",
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
          ),
        ),
        bottomNavigationBar: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.save_rounded,
                size: 30,
              ),
              SizedBox(
                width: 80,
              ),
              Icon(
                Icons.menu_book_outlined,
                size: 30,
              ),
              SizedBox(
                width: 80,
              ),
              Icon(
                Icons.home,
                size: 30,
              ),
              SizedBox(
                width: 80,
              ),
              Icon(
                Icons.view_column,
                size: 30,
              ),
              SizedBox(
                width: 80,
              ),
              Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
              SizedBox(
                width: 50,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0, top: 10),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text(
                                "Looking for ...",
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                      height: 40,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 50,
                      minWidth: 60,
                      color: Colors.blue[700],
                      child: Icon(Icons.tune_rounded),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[700],
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 300.0),
                          child: Text(
                            "sep 23,2023",
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.pause,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "Today a reader\n tomorrow a",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Text(
                                  "LEADER",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.save_outlined,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.bookmark_border_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.share,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.pause,
                              size: 40,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Catagories",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {},
                        color: Colors.black12,
                        child: Row(
                          children: [
                            //files.icons[index],
                            Icon(icons[index]),
                            SizedBox(width: 10),
                            Text(text[index]),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Recomendation",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: assetImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      width: 130,
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            child: Image.asset(
                              assetImages[index],
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Text(imageName[index]),
                        ],
                      ),
                    );
                  },
                ),
              ),

              //second image

              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "New",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: assetImages.length,
                  itemBuilder: (context, index) {
                    final random = Random();
                    final selectedIndex = random.nextInt(6);

                    return Container(
                      height: MediaQuery.of(context).size.height,
                      width: 130,
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            child: Image.asset(
                              assetImages[selectedIndex],
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Text(imageName[selectedIndex]),
                        ],
                      ),
                    );
                  },
                ),
              ),

              //third image

              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Trending",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: assetImages.length,
                  itemBuilder: (context, index) {
                    final randomIndex = Random().nextInt(assetImages.length);
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      width: 130,
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            child: Image.asset(
                              assetImages[randomIndex],
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Text(imageName[randomIndex]),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
