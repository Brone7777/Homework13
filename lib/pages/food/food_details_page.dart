import 'package:flutter/material.dart';

// import 'package:flutter/cupertino.dart/';
import 'package:foods/pages/food/food_item.dart';

class FoodDetailsPage extends StatefulWidget {
  static const routeName = '/food_details';

  const FoodDetailsPage({Key? key}) : super(key: key);

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Colors.lightBlue.shade50,
              Colors.blueAccent.shade100,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Image.asset('assets/images/${item.images}'),
              fit: BoxFit.fill,
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'เมนู: ${item.name}',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      'ราคา: ${item.price} บาท',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
