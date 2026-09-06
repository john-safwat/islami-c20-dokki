import 'package:flutter/material.dart';
import 'package:islami_c20_dokki/models/sura.dart';
import 'package:islami_c20_dokki/screens/home/tabs/quran/sura_widget.dart';
import 'package:islami_c20_dokki/theme/app_colors.dart';
import 'package:islami_c20_dokki/theme/text_styles.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            style: titleMedium(color: AppColors.white),
            decoration: InputDecoration(
              filled: true,
              hintText: "Search for Sura",
              hintStyle: titleMedium(color: AppColors.white),
              fillColor: AppColors.black.withAlpha(90),
              prefixIcon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
              prefixIconColor: AppColors.gold,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.gold, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.gold, width: 2),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("Suras List", style: titleMedium(color: AppColors.white)),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.all(16),
            itemBuilder: (_, index) => SuraWidget(sura: surasList[index]),
            separatorBuilder: (_, _) =>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(color: AppColors.white, indent: 40, endIndent: 40),
                ),
            itemCount: 114,
          ),
        ),
      ],
    );
  }
}
