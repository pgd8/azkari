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
  String title = "Start";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(420, 870));
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Center(child: TabLogo("assets/images/sebhaLogo.jpg")),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: MyTheme.primaryColor,
                borderRadius: BorderRadius.circular(30.r)),
            child: Text("$counter"),
          ),
          Container(
            margin: EdgeInsets.only(top: 0.03.sh),
            child: ElevatedButton(
                onPressed: () {
                  if (title == "Start" && counter >= 0 && counter < 32 ||
                      title == AppLocalizations.of(context)!.subhanAllah &&
                          counter <= 32) {
                    title = AppLocalizations.of(context)!.subhanAllah;
                    if (counter == 32) {
                      title = AppLocalizations.of(context)!.alhamdulellah;
                      counter = 0;
                    }
                  }
                  if (title == AppLocalizations.of(context)!.alhamdulellah &&
                      counter >= 0 &&
                      counter <= 32) {
                    if (counter == 32) {
                      title = AppLocalizations.of(context)!.laElahElaAllah;
                      counter = 0;
                    }
                  }
                  if (title == AppLocalizations.of(context)!.laElahElaAllah &&
                      counter >= 0 &&
                      counter <= 32) {
                    if (counter == 32) {
                      title = AppLocalizations.of(context)!.allahakbar;
                      counter = 0;
                    }
                  }
                  if (title == AppLocalizations.of(context)!.allahakbar &&
                      counter >= 0 &&
                      counter <= 32) {
                    if (counter == 32) {
                      title = AppLocalizations.of(context)!.subhanAllah;
                      counter = 0;
                    }
                  }
                  counter++;
                  setState(() {});
                },
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontFamily: "Cairo"),
                )),
          )
        ],
      ),
    );
  }
}
