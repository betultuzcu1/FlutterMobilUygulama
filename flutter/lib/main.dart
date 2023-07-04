import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.brown,
                  backgroundImage: AssetImage(
                      "images/kahvehakkndabilmenizgerekenler680.jpg"),
                ),
                Text(
                  "Flutter Kahvecisi",
                  style: TextStyle(
                    fontFamily: "Caveat",
                    fontSize: 45,
                    color: Colors.brown[900],
                  ),
                ),
                Text(
                  "Bir Fincan Uzağınızda",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 200,
                  child: Divider(height: 30,
                  color: Colors.brown[900]),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.brown[900],
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      "betultuzcu1@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.brown[900],
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      "+90 507 320 39 46",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
