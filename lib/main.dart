import 'package:apptwitter/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: const Color.fromARGB(255, 0, 0, 0)
      ),
      home: Instagram(),
      routes: {},
    );
  }
}

class Instagram extends StatefulWidget {
  @override
  State<Instagram> createState() => __InstagramState();
}

class __InstagramState extends State<Instagram> {
  int id = 0;

  @override
  Widget build(BuildContext context) {
    final tab = <Widget>[
      Home(),
      Center(child: Text("tab1")),
      Center(child: Text("tab1")),
      Center(child: Text("tab1")),
      Center(child: Text("tab1")),
    ];
    final bottomNavigationBarItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.circle), label: ""),
];
    final bottomNavigationBar= BottomNavigationBar(
      items:bottomNavigationBarItems,
      currentIndex: id,
      type: BottomNavigationBarType.fixed,
      onTap: (int value){
        setState(() {
          id=value;
        }
        );
      },

    );
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
              color: Colors.black,
            ),
            title: Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
                color: Colors.black,
              ),
            ],
          ),
          body: tab[id],
          bottomNavigationBar: bottomNavigationBar,
        ),
      ),
    );
  }
}
