import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      this.title = 'title',
      this.width = double.infinity,
      this.onTap})
      : super(key: key);

  final String? title;
  final double? width;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red[600],
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        splashColor: Colors.red[400],
        onTap: () {
          Future.delayed(kThemeAnimationDuration).then((_) {
            if (onTap != null) {
              onTap!();
            }
          });
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: 60,
          child: Text('$title',
              style: const TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }
}
