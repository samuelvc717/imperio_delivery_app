import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsNavBar extends StatelessWidget {
  final IconData home, search, favorite;
  ItemsNavBar({
    this.home,
    this.search,
    this.favorite,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            child: Icon(home),
            onTap: () {},
          ),
          InkWell(
            child: Icon(search),
            onTap: () {},
          ),
          Container(
            width: Get.width * 0.20,
          ),
          InkWell(
            child: Icon(favorite),
            onTap: () {},
          ),
          InkWell(
            child: Image.asset('assets/img/man.png', width: 21),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
