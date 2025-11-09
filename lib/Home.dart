import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              height: 50.0,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 100,
            itemBuilder: (context, index) {
              return Padding(padding:   EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Image.network(
                        "https://softloomittraining.com/wp-content/uploads/2023/01/flutter-for-beginners.png",
                       ),
              ),
              );
            }
            ),
            );
          } else {
            return tabs(context);
          }
        },
      ),
    );
  }
}

Widget tabs(context) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Container(
      height: 360.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 100,
              itemBuilder: (context, index) {
                return CircleAvatar(
                  child:
                      // Image.network(
                      //   "https://softloomittraining.com/wp-content/uploads/2023/01/flutter-for-beginners.png",
                      // ),
                      Text('A'),
                );
              },
            ),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: CircleAvatar(child: Text('A')),
            title: Text(
              "USER NAME",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),
          Divider(),
          Image.network(
            "https://storage.googleapis.com/cms-storage-bucket/lockup_flutter_horizontal.c823e53b3a1a7b0d36a9.png",
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.thumb_up_alt_outlined),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.thumb_up_alt_outlined),
                color: Colors.black,
              ),
            ],
          ),
          Text("500 Like", style: TextStyle(color: Colors.black)),
          Text("theusenamr:DESCRIPTION........"),
          Divider(),
        ],
      ),
    ),
  );
}
