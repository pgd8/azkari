import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabLogo extends StatelessWidget {
  String imgPath;

  TabLogo(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 0.3.sh,
      alignment: Alignment.center,
      child: Image.asset(
        imgPath,
        fit: BoxFit.fill,
      ),
    );
  }
}
