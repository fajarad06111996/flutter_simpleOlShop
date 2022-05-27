import 'package:flutter/material.dart';
import 'package:olshop/constans.dart';

class RecentProduct extends StatelessWidget {
  // const RecentProduct({Key? key}) : super(key: key);

  final productList = [
    {
      'name': 'a',
      'image': 'assets/images/image_1.png',
      'price': 50,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'b',
      'image': 'assets/images/image_2.png',
      'price': 60,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'c',
      'image': 'assets/images/image_3.png',
      'price': 70,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'd',
      'image': 'assets/images/img.png',
      'price': 80,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'a',
      'image': 'assets/images/image_1.png',
      'price': 50,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'b',
      'image': 'assets/images/image_2.png',
      'price': 60,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'c',
      'image': 'assets/images/image_3.png',
      'price': 70,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'd',
      'image': 'assets/images/img.png',
      'price': 80,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'a',
      'image': 'assets/images/image_1.png',
      'price': 50,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'b',
      'image': 'assets/images/image_2.png',
      'price': 60,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'c',
      'image': 'assets/images/image_3.png',
      'price': 70,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    },
    {
      'name': 'd',
      'image': 'assets/images/img.png',
      'price': 80,
      'disc': 'qwerty qwerty qwerty qwerty qwerty qwerty qwerty'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.70,
      ),
      itemBuilder: (BuildContext context, int index) {
        return RecentSingleProduct(
          recent_single_prod_disc: productList[index]['disc'],
          recent_single_prod_name: productList[index]['name'],
          recent_single_prod_price: productList[index]['price'],
          recent_single_prod_image: productList[index]['image'],
        );
      },
    );
  }
}

class RecentSingleProduct extends StatefulWidget {
  final recent_single_prod_name;
  final recent_single_prod_image;
  final recent_single_prod_price;
  final recent_single_prod_disc;

  RecentSingleProduct({
    this.recent_single_prod_name,
    this.recent_single_prod_image,
    this.recent_single_prod_price,
    this.recent_single_prod_disc,
  });

  @override
  State<RecentSingleProduct> createState() => _RecentSingleProductState();
}

class _RecentSingleProductState extends State<RecentSingleProduct> {
  // const RecentSingleProduct({Key? key}) : super(key: key);
  bool isLike = false;

  final Color inactiveColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          width: 160,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Image.asset(widget.recent_single_prod_image),
        ),
        ListTile(
          title: Text(widget.recent_single_prod_name),
          subtitle: Text('\$${widget.recent_single_prod_price}'),
          trailing: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              icon: Icon(
                isLike ? Icons.favorite : Icons.favorite_border_outlined,
                color: isLike ? Colors.red : inactiveColor,
                // Icons.favorite_border_outlined,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
