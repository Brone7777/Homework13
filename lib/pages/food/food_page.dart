import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPage extends StatefulWidget {
  static const routeName = '/food';

  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  var _selectedBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Your Order',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // ไล่เฉดจากมุมบนซ้ายไปมุมล่างขวาของ Container

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // ไล่เฉดจากสีแดงไปสีน้ำเงิน
            colors: [
              Colors.lightBlue.shade50,
              Colors.blueAccent.shade100,
            ],
          ),
        ),
        child: currentItem(),
      ),
    );
  }

  Widget currentItem() {
    switch (_selectedBottomNavIndex) {
      case 0:
        return FoodListPage();
      default:
        return OrderPage();
    }
  }
}

class FoodListPage extends StatelessWidget {
  static const routeName = '/foodList';

  const FoodListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('เมนูอาหาร',
          style: GoogleFonts.prompt(fontSize: 80.0, color: Colors.pink)),
    );
  }
}

class OrderPage extends StatelessWidget {
  static const routeName = '/order';

  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'อาหารที่สั่ง',
        style: GoogleFonts.prompt(fontSize: 80.0, color: Colors.pink),
      ),
    );
  }
}
