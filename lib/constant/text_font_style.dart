import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gen/colors.gen.dart';

class TextFontStyle {
  TextFontStyle._();

  static final text20whiteSans = GoogleFonts.urbanist(
      color: AppColors.cFFFFF, fontSize: 20.sp, fontWeight: FontWeight.w500);

  static final text1500000B66w600 = GoogleFonts.urbanist(
      color: AppColors.deepBlack, fontSize: 15.sp, fontWeight: FontWeight.w700);

  static final text14503559w400 = GoogleFonts.urbanist(
      color: AppColors.allPrimaryColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400);

  static final text16cFF503559W700 = GoogleFonts.urbanist(
      color: AppColors.cFFF2C2, fontSize: 16.sp, fontWeight: FontWeight.w700);

  static final text324D4D4DW700 = GoogleFonts.urbanist(
      color: AppColors.c4D4D4D, fontSize: 32.sp, fontWeight: FontWeight.w700);

  static final text11cFF6E5782w600 = GoogleFonts.urbanist(
      color: AppColors.cFF6E5782, fontSize: 11.sp, fontWeight: FontWeight.w600);

  static final text13poppinscFF6E5782w600 = GoogleFonts.poppins(
    color: AppColors.cFF6E5782,
    fontSize: 13.sp,
  );

  static final text10poppinscFF6E5782w600 = GoogleFonts.poppins(
    color: AppColors.cFF6E5782,
    fontSize: 10.sp,
  );

  static final text16cFF6E5782w600 = GoogleFonts.urbanist(
      color: AppColors.cFF6E5782, fontSize: 16.sp, fontWeight: FontWeight.bold);

  static final text16cFF2D2Dw600 = GoogleFonts.urbanist(
      color: AppColors.cFF2D2D, fontSize: 16.sp, fontWeight: FontWeight.bold);

  static final headline11cFF6E5782w600 = GoogleFonts.urbanist(
      color: AppColors.cFF6E5782, fontSize: 24.sp, fontWeight: FontWeight.w700);

  /*##################*/
  /*walk throw screen*/
  static final text13poppinsc000000 = GoogleFonts.poppins(
    color: AppColors.c000000,
    fontSize: 13.sp,
  );

  static final text15figtreec000000 = GoogleFonts.figtree(
    color: AppColors.c000000,
    fontSize: 15.sp,
  );

  static final text15poppins000000 = GoogleFonts.poppins(
    color: AppColors.cFFFFFF,
    fontSize: 15.sp,
  );

  static final customizePoppinsFont = GoogleFonts.poppins();
}
