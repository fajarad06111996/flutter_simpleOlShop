import 'package:flutter/material.dart';
import 'package:olshop/constans.dart';

class Category extends StatefulWidget {
  // const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProduct(
            press: () {},
            image: 'assets/images/image_1.png',
            text: 'Mens',
          ),
          CategoryProduct(
            press: () {},
            image: 'assets/images/image_1.png',
            text: 'Mens',
          ),
          CategoryProduct(
            press: () {},
            image: 'assets/images/image_1.png',
            text: 'Mens',
          ),
          CategoryProduct(
            press: () {},
            image: 'assets/images/image_1.png',
            text: 'Mens',
          ),
        ],
      ),
    );
  }
}

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({
    Key? key,
    required this.image,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String image, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Chip(
              backgroundColor: kPrimaryColor,
              label: Row(
                children: [
                  Image.asset(
                    image,
                    height: 40,
                  ),
                  Text(text),
                ],
              )),
        ),
      ),
    );
  }
}
