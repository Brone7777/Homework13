import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foods/pages/food/food_page.dart';
import 'package:foods/pages/Profile/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;
  FoodPage? _currentPage = FoodPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: _buildAppBarTitle(),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  // ไล่เฉดจากมุมบนซ้ายไปมุมล่างขวาของ Container

                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // ไล่เฉดจากสีแดงไปสีน้ำเงิน
                  colors: [
                    Colors.lightBlue.shade50,
                    Colors.blueAccent.shade100,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: Image.asset('assets/images/profile.png'),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(
                      'Arinchai Sangjun',
                      //style: GoogleFonts.sarabun(color: Colors.black ,),
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Text(
                    'sangjun_a@silpakorn.edu',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            ListTile(
              title: _buildDrawerItem(
                  Icon(Icons.fastfood,
                      size: 35.0,
                      color: _subPageIndex == 0 ? Colors.blue : Colors.black),
                  'Food',
                  0),
              onTap: () {
                _showSubPage(context, 0);
              },
            ),
            ListTile(
              title: _buildDrawerItem(
                  Icon(Icons.person,
                      size: 40.0,
                      color: _subPageIndex == 1 ? Colors.blue : Colors.black),
                  'Profile',
                  1),
              onTap: () => _showSubPage(context, 1),
            ),
          ],
        ),
      ),
      body: _buildSubPage(),
    );
  }

  Text _buildAppBarTitle() {
    switch (_subPageIndex) {
      case 0:
        return Text('Food');
      default:
        return Text('Profile');
    }
  }

  dynamic _buildSubPage() {
    switch (_subPageIndex) {
      case 0:
        return _currentPage;
      default:
        return ProfilePage();
    }
  }

  void _showSubPage(BuildContext context, int page) {
    setState(() {
      _subPageIndex = page;
      _currentPage = page == 0 ? FoodPage() : null;
    });
    Navigator.of(context).pop();
    //Navigator.of(context).pushNamed(LoginPage.routeName);
  }

  Row _buildDrawerItem(Widget icon, String title, int onFocus) {
    return Row(
      children: [
        icon,
        SizedBox(width: 8.0),
        Text(title,
            style: _subPageIndex == onFocus
                ? Theme.of(context).textTheme.headline5
                : Theme.of(context).textTheme.bodyText2),
      ],
    );
  }
}
