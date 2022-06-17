import 'package:cafe_app/model/coffee_menu.dart';
import 'package:flutter/material.dart';

class CoffeeDetailPage extends StatelessWidget {
  final CoffeeMenu coffee;
  final Color? backgroundColor;

  // ignore: use_key_in_widget_constructors
  const CoffeeDetailPage({ required this.coffee, required this.backgroundColor });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return CoffeeDetailPageMobile(coffee: coffee, backgroundColor: backgroundColor);
          } else {
            return CoffeeDetailPageWeb(coffee: coffee, backgroundColor: backgroundColor);
          }

        }
      )
    );
  }
}

class CoffeeDetailPageMobile extends StatelessWidget {
  final CoffeeMenu coffee;
  final Color? backgroundColor;

  // ignore: use_key_in_widget_constructors
  const CoffeeDetailPageMobile({ required this.coffee, required this.backgroundColor });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  child: Image.asset(coffee.imageUrl)
                ),
              ),
              IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                }, 
                icon: const Icon(Icons.arrow_back)
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  coffee.name,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400
                  )
                ),
                Text(
                  r'$' + coffee.price.toString(),
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400
                  )
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children:[
                Text(
                  coffee.description,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  coffee.longDescription
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CoffeeDetailPageWeb extends StatelessWidget {
  final CoffeeMenu coffee;
  final Color? backgroundColor;  

  // ignore: use_key_in_widget_constructors
  const CoffeeDetailPageWeb({ required this.coffee, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  coffee.imageUrl,
                  width: 300,
                )
              ),
              IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                }, 
                icon: const Icon(Icons.arrow_back)
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        coffee.name,
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400
                        )
                      ),
                      Text(
                        r'$' + coffee.price.toString(),
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400
                        )
                      )
                    ]
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    coffee.description,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    coffee.longDescription
                  )
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}