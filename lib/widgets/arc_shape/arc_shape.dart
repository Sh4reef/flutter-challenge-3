import 'package:flutter/material.dart';
import 'package:flutterchallenge3/clippers/arc_clipper/arc_clipper.dart';
import 'dart:math';

class ArcShape extends StatelessWidget {
  const ArcShape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ClipPath(
          clipper: ArcClipper(),
          child: Container(
            color: Colors.red[600],
            height: size.height / 2,
            child: Transform.translate(
              offset: Offset((size.width / 2.25), 0),
              child: Transform.rotate(
                origin: Offset(-(size.width / 2), 0),
                angle: -90 * pi / 180,
                child: ClipPath(
                    clipper: ArcClipper(),
                    child: Container(
                      color: Colors.red[400],
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
