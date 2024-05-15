// ignore_for_file: use_key_in_widget_constructors

import 'package:azkari_project/My_App/my_Theme.dart';
import 'package:azkari_project/Shared_Components/tab_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    String title = AppLocalizations.of(context)!.subhanAllah;
    ScreenUtil.init(context, designSize: const Size(420, 870));
    return Column(
      children: [
        Center(
          child:TabLogo("assets/images/sebhaLogo.jpg")
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: MyTheme.primaryColor,
              borderRadius: BorderRadius.circular(30.r)),
          child: Text("$counter"),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
            ))
      ],
    );
  }
}
