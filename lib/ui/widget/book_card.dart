import 'package:flutter/material.dart';
import 'package:scribd_clone/theme.dart';

class BookCard extends StatelessWidget {
  final String bookname;
  final String author;
  final String imageUrl;

  const BookCard({
    Key? key,
    required this.bookname,
    required this.author,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail_book');
      },
      child: Container(
        width: 145,
        margin: EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 145,
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imageUrl,
                      ),
                      fit: BoxFit.cover)),
            ),
            Text(
              bookname,
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              author,
              style: secondaryTextStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: starColor,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.bookmark_border,
                  color: secondaryTextColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
