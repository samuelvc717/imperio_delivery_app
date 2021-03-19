import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/items_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: Get.width,
        height: 80,
        // color: Colors.white,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            CustomPaint(
              size: Size(Get.width, 80),
              painter: CustomBottomNavBar(),
            ),
            Center(
              heightFactor: 0.6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 3, color: Colors.white),
                ),
                child: FloatingActionButton(
                  elevation: 0.1,
                  onPressed: () {},
                  backgroundColor: Colors.orange,
                  child: (Image.asset('assets/img/carrinho.png')),
                ),
              ),
            ),
            ItemsNavBar(
              home: Icons.home_rounded,
              search: Icons.search,
              favorite: Icons.favorite,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavBar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
