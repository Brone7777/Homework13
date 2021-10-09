import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods/pages/food/food_details_page.dart';
import 'package:foods/pages/food/food_item.dart';

class FoodListPage extends StatefulWidget {
  static const routeName = '/food_list';

  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  var items = [
    FoodItem(
      id: 1,
      name: "แกงเขียวหวาน",
      price: 40,
      images: 'แกงเขียวหวาน.jpg',
    ),
    FoodItem(
      id: 2,
      name: "ต้มแซ่บเล้ง",
      price: 75,
      images: 'ต้มแซ่บเล้ง.jpg',
    ),
    FoodItem(
      id: 3,
      name: "ผัดไทย",
      price: 35,
      images: 'ผัดไทย.jpg',
    ),
    FoodItem(
      id: 4,
      name: "ต้มยำกุ้ง",
      price: 60,
      images: 'ต้มยำกุ้ง.jpg',
    ),
    FoodItem(
      id: 5,
      name: "ข้าวผัด",
      price: 40,
      images: 'ข้าวผัด.jpg',
    ),
    FoodItem(
      id: 6,
      name: "ปูผัดผงกะหรี่",
      price: 50,
      images: 'ปูผัดผงกะหรี่.jpg',
    ),
    FoodItem(
      id: 7,
      name: "โค้ก ซีโร่ สูตรไม่มีน้ำตาล",
      price: 15,
      images: 'โค้ก ซีโร่ สูตรไม่มีน้ำตาล.jfif',
    ),
    FoodItem(
      id: 8,
      name: "สไปรท์",
      price: 15,
      images: 'สไปรท์.jpg',
    ),
    FoodItem(
      id: 9,
      name: "โซจู จินโรซัมมิซึล Strawberry",
      price: 150,
      images: 'โซจู จินโรซัมมิซึล Strawberry.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          //Map<String, dynamic> item = items[index];
          var item = items[index];
          return Card(
            margin: const EdgeInsets.all(10.0),
            // const for once create in first time of 1000 loops
            child: InkWell(
              onTap: () {
                print(item.toString());
                Navigator.pushNamed(
                  context,
                  FoodDetailsPage.routeName, //FoodDetails,
                  arguments: item,
                );
              },
              child: Row(
                children: [
                  Image.asset(
                      //'assets/images/${item["image"]}',
                      'assets/images/${item.images}',
                      width: 76.0,
                      height: 76.0,
                      fit: BoxFit.cover),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        //item["name"] as String,
                        item.name,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        item.price.toString() + " บาท",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
