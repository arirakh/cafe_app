import 'package:cafe_app/model/coffee_menu.dart';
import 'package:cafe_app/page/coffee_detail_page.dart';
import 'package:flutter/material.dart';

class CoffeeListPage extends StatelessWidget {
  final Color? backgroundColor;
  
  // ignore: use_key_in_widget_constructors
  const CoffeeListPage({ required this.backgroundColor });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Let's Brew!"),
      ),
      body:  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 480) {
            return CoffeeMenuGrid(backgroundColor: backgroundColor, gridCount: 2);
          } else if (constraints.maxWidth <= 760) {
            return CoffeeMenuGrid(backgroundColor: backgroundColor, gridCount: 3);
          } else {
            return CoffeeMenuGrid(backgroundColor: backgroundColor, gridCount: 4);
          }
        },
      ),
    );
  }
}

class CoffeeMenuGrid extends StatelessWidget {
  final Color? backgroundColor;
  final int gridCount;

  // ignore: use_key_in_widget_constructors
  const CoffeeMenuGrid({ required this.backgroundColor, required this.gridCount });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scrollbar(
          isAlwaysShown: true,
          child: GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: gridCount,
            children: coffeeMenuList.map((coffee) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CoffeeDetailPage(coffee: coffee, backgroundColor: backgroundColor);
                  }));
                },
                child: Card(
                  color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)
                          ),
                          child: Image.asset(
                            coffee.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        )
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              coffee.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text( r'$' + coffee.price.toString())
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            coffee.description,
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}