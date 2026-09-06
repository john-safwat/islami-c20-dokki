import 'package:flutter/material.dart';
import 'package:islami_c20_dokki/models/sura.dart';
import 'package:islami_c20_dokki/screens/sura_details/sura_details.dart';
import 'package:islami_c20_dokki/theme/app_colors.dart';
import 'package:islami_c20_dokki/theme/text_styles.dart';

class SuraWidget extends StatelessWidget {
  final Sura sura;

  const SuraWidget({required this.sura, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routeName , arguments: sura);
      },
      child: Row(
        spacing: 16,
        children: [
          Stack(
            alignment: .center,
            children: [
              ImageIcon(
                AssetImage("assets/images/img_sur_number_frame.png"),
                color: AppColors.white,
                size: 60,
              ),
              Text(
                sura.id.toString(),
                style: titleMedium(color: AppColors.white),
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              spacing: 8,
              children: [
                Text(sura.nameEn, style: titleLarge(color: AppColors.white),),
                Text(sura.versesNumber, style: titleMedium(color: AppColors.white),),
              ],
            ),
          ),
          Text(sura.nameAr, style: titleLarge(color: AppColors.white),),
        ],
      ),
    );
  }
}
