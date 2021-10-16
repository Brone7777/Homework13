import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods/pages/food/food_details_page.dart';
import 'package:foods/pages/food/food_item.dart';
import 'package:google_fonts/google_fonts.dart';

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
      images: '1.jpg',
    ),
    FoodItem(
      id: 2,
      name: "ต้มแซ่บเล้ง",
      price: 75,
      images: '2.jpg',
    ),
    FoodItem(
      id: 3,
      name: "ผัดไทย",
      price: 35,
      images: '3.jpg',
    ),
    FoodItem(
      id: 4,
      name: "ต้มยำกุ้ง",
      price: 60,
      images: '4.jpg',
    ),
    FoodItem(
      id: 5,
      name: "ข้าวผัด",
      price: 40,
      images: '5.jpg',
    ),
    FoodItem(
      id: 6,
      name: "ปูผัดผงกะหรี่",
      price: 50,
      images: '6.jpg',
    ),
    // FoodItem(
    //   id: 7,
    //   name: "โค้ก ออริจินอล",
    //   price: 15,
    //   images: 'coca-cola.jpg',
    // ), มีบัค ยังไม่ได้แก้ไข
    FoodItem(
      id: 8,
      name: "สไปรท์",
      price: 15,
      images: '8.jpg',
    ),
    FoodItem(
      id: 9,
      name: "โซจู จินโรซัมมิซึล Strawberry",
      price: 150,
      images: '9.jpg',
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
                  FoodDetailsPage.routeName,
                  arguments: item,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/${item.images}',
                        width: 90.0, height: 90.0),
                    SizedBox(width: 9.0),
                    Text(
                      item.name as String,
                      style: GoogleFonts.kanit(fontSize: 25.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
