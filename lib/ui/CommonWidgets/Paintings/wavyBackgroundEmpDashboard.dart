import 'package:flutter/material.dart';
import 'package:leave_application/style/theme.dart';

class WavyHeaderBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: 270,
         decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  AppColors.loginGradientStart,
                  AppColors.loginGradientStart
                ],
                begin: Alignment(0.0, 0),
                end: Alignment(0.0, 1.0),
                // begin: const FractionalOffset(0.0, 1.0),
                // end: const FractionalOffset(1.0, 1.0),
                stops: [0.0, 2.0],
                tileMode: TileMode.clamp),
          ),
      ),
      clipper: BottomWaveClipper(),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}