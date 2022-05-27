import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:olshop/main_page/favorite_page.dart';
import 'package:olshop/main_page/user_page.dart';

import 'home_body.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: home_body(),
      bottomNavigationBar: ButtonNavBar(),
    );
  }
}

class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            color: Color(0XFFDADADA),
            blurRadius: 50,
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => home_screen(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/icons/flower.svg'),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => home_screen(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/icons/search.svg'),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritePage(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPage(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/icons/user-icon.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
