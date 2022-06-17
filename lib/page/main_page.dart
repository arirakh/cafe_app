import 'package:cafe_app/page/coffee_list_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isSwitched = false;
  
  Color? backgroundColor = Colors.grey[300];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/coffee_vector.png',
              width: 150,
            ),
            Column(
              children: [
                const Text('Change Background Color'),
                Switch(
                  value: isSwitched, 
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      backgroundColor = isSwitched ? Colors.amber[800] : Colors.grey[300];
                    });
                  }
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CoffeeListPage(backgroundColor: backgroundColor); 
                }));
              },
              child: const Text(
                  "Let's Brew!",
                  style: TextStyle(
                    fontFamily: 'Merienda',
                    fontSize: 20,
                  ),
              ),
            )
          ]
        ),
      ),
    );
  }
}