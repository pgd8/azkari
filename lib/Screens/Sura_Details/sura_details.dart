import 'package:azkari_project/Data_Models/sura_model.dart';
import 'package:azkari_project/Shared_Components/div_sepaerating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "Sura Details";

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> content = [];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(420, 870));
    var sura = ModalRoute.of(context)!.settings.arguments as SuraModel;
    loadFile(sura.index);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          sura.suraName,
          style: TextStyle(
            fontFamily: "Cairo",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 0.9.sw,
          height: 0.8.sh,
          child: Card(
            child: ListView.separated(
              itemBuilder: (context, index) => Text(
                content[index],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 22.sp),
              ),
              separatorBuilder: (context, index) => DivSeperating(),
              itemCount: content.length,
            ),
          ),
        ),
      ),
    ));
  }

  void loadFile(int index) async {
    String suraContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = suraContent.split("\n");
    content = lines;
    if (content.last == "") {
      content.removeAt(content.length - 1);
    }
    setState(() {});
  }
}
