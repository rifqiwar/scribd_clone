import 'package:flutter/material.dart';
import 'package:scribd_clone/ui/pages/home/detail_book.dart';
import 'package:scribd_clone/ui/pages/home/home_page.dart';
import 'package:scribd_clone/ui/pages/home/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => MainPage(),
      '/detail_book': (context) => DetailBook(),
    });
  }
}
