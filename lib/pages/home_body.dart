import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:olshop/constans.dart';
import 'package:olshop/pages/category/category.dart';
import 'package:olshop/pages/product/recent_product.dart';
import 'custom_appBar.dart';
import 'search_Bar.dart';
import 'slider/slider.dart';

class home_body extends StatefulWidget {
  const home_body({Key? key}) : super(key: key);

  @override
  State<home_body> createState() => _home_bodyState();
}

class _home_bodyState extends State<home_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: ListView(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 20,
              ),
              SearchBar(),
              SizedBox(
                height: 20,
              ),
              ProductSlider(),
              SizedBox(
                height: 20,
              ),
              Category(),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 290,
                child: RecentProduct(),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
