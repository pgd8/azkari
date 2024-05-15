import 'package:azkari_project/Data_Models/sura_model.dart';
import 'package:azkari_project/Screens/Sura_Details/sura_details.dart';
import 'package:azkari_project/Shared_Components/div_sepaerating.dart';
import 'package:azkari_project/Shared_Components/tab_logo.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(420, 870));
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TabLogo("assets/images/Quran_Logo.png"),
          DivSeperating(),
          Text(
            AppLocalizations.of(context)!.suraName,
            style: TextStyle(
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold,
            ),
          ),
          DivSeperating(),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, SuraDetailsScreen.routeName,
                              arguments: SuraModel(
                                  suraName: suraNames[index], index: index));
                        },
                        child: Text(
                          suraNames[index],
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                  separatorBuilder: (context, index) => Divider(
                        indent: 0.03.sw,
                        endIndent: 0.03.sw,
                      ),
                  itemCount: suraNames.length))
        ],
      ),
    );
  }

  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
}
