import 'package:flutter/material.dart';
import 'package:scribd_clone/theme.dart';

class AudioCard extends StatelessWidget {
  final String audioname;
  final String author;
  final String imageUrl;
  const AudioCard({
    Key? key,
    required this.audioname,
    required this.author,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 145,
            height: 145,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.only(
                  bottom: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                    color: primaryTextColor, shape: BoxShape.circle),
                child: Icon(
                  Icons.headphones,
                  color: backgroundColor2,
                ),
              ),
            ),
          ),
          Text(
            audioname,
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
    );
  }
}
