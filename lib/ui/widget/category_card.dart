import 'package:flutter/material.dart';
import 'package:scribd_clone/theme.dart';

class CategoryCard extends StatelessWidget {
  final String nameCategory;
  final bool isSelected;

  const CategoryCard({
    Key? key,
    required this.nameCategory,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            nameCategory,
            style: isSelected == true
                ? selectedTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w700)
                : primaryTextStyle.copyWith(
                    fontSize: 18,
                  ),
          ),
          Container(
            height: 2,
            width: 50,
            decoration: BoxDecoration(
              color: isSelected == true ? primaryColor : backgroundColor,
            ),
          )
        ],
      ),
    );
  }
}
