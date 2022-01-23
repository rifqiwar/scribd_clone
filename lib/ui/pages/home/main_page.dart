import 'package:flutter/material.dart';
import 'package:scribd_clone/theme.dart';
import 'package:scribd_clone/ui/pages/home/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customButtonNav() {
      return BottomAppBar(
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
            selectedItemColor: primaryColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.auto_graph_sharp,
                ),
                label: 'Top Carts',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_border_outlined), label: 'Saved'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded), label: 'Account'),
            ]),
      );
    }

    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: customButtonNav(),
    );
  }
}
