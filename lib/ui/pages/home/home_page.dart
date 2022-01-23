import 'package:flutter/material.dart';
import 'package:scribd_clone/theme.dart';
import 'package:scribd_clone/ui/widget/audio_card.dart';
import 'package:scribd_clone/ui/widget/book_card.dart';
import 'package:scribd_clone/ui/widget/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Kategori
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryCard(
                          nameCategory: 'All',
                          isSelected: true,
                        ),
                        CategoryCard(nameCategory: 'Book'),
                        CategoryCard(nameCategory: 'Audio Book'),
                        CategoryCard(nameCategory: 'Magazine'),
                        CategoryCard(nameCategory: 'Podcast'),
                        CategoryCard(nameCategory: 'Document'),
                      ],
                    )),

                //PopularBook
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Book',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'See All',
                      style: selectedTextStyle.copyWith(
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    BookCard(
                      author: 'Yuval Noah Harari',
                      bookname: 'Sapiens: A Brief History of Humankind',
                      imageUrl: 'assets/book2.png',
                    ),
                    BookCard(
                      author: 'Kate Quinn',
                      bookname: 'The Alice Network: A Novel',
                      imageUrl: 'assets/book3.png',
                    ),
                    BookCard(
                      author: 'Mark Manson',
                      bookname:
                          'The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life',
                      imageUrl: 'assets/book1.png',
                    ),
                  ]),
                ),

                //Audio Book
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Audiobook',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'See All',
                      style: selectedTextStyle.copyWith(
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    AudioCard(
                      author: 'Yuval Noah Harari',
                      audioname: 'Sapiens: A Brief History of Humankind',
                      imageUrl: 'assets/book2.png',
                    ),
                    AudioCard(
                      author: 'Kate Quinn',
                      audioname: 'The Alice Network: A Novel',
                      imageUrl: 'assets/book3.png',
                    ),
                    AudioCard(
                      author: 'Mark Manson',
                      audioname:
                          'The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life',
                      imageUrl: 'assets/book1.png',
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xff212426),
        centerTitle: true,
        elevation: 0.3,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/scribd_icon.png',
              width: 30,
            ),
            const Text(
              'scribd',
            ),
          ],
        ),
      ),
      body: content(),
    );
  }
}
