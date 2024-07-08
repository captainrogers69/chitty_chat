import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/k_colors.dart';

class KTabbar extends StatelessWidget {
  final Color? labelColor, unselectedLabelColor, dividerColor;
  final double? vertMargin, horizontal;
  final void Function(int)? onTap;
  final TabController controller;
  final bool? isScrollable;
  final List<String> tabs;
  final bool showDivider;
  const KTabbar({
    this.unselectedLabelColor,
    this.showDivider = false,
    this.isScrollable = true,
    required this.controller,
    this.horizontal = 10,
    this.vertMargin = 5,
    required this.tabs,
    this.dividerColor,
    this.labelColor,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KColors.transparentColor,
      width: 100.w,
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: KColors.transparentColor,
          highlightColor: KColors.transparentColor,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                surfaceContainerHighest:
                    /* showDivider ? lightlightGreyColor : */
                    KColors.transparentColor,
              ),
        ),
        child: TabBar(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          indicatorPadding: EdgeInsets.zero,
          // labelPadding: EdgeInsets.zero,
          // padding: EdgeInsets.zero,
          labelPadding: EdgeInsets.symmetric(horizontal: 8.5.sp),
          // padding: const EdgeInsets.only(left: 5),
          isScrollable: true,
          dividerHeight: !showDivider ? 0 : 1.sp,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: KColors.darkPrimary,
          indicatorWeight: 2.sp,
          // indicatorPadding: EdgeInsets.only(bottom: showDivider ? 0 : 1.sp),
          // indicator: const BoxDecoration(
          //   color: darkPrimary,
          // ),
          // isScrollable: labelColor != null,
          labelColor: labelColor ?? KColors.darkPrimary,
          unselectedLabelColor: unselectedLabelColor ?? KColors.grey400,
          unselectedLabelStyle:
              Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
                    color: KColors.whiteColor,
                    fontSize: 12.sp,
                  ),
          tabAlignment: TabAlignment.start,
          labelStyle: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing: 0.25,
                color: KColors.darkPrimary,
                fontSize: 12.sp,
              ),
          onTap: onTap,
          controller: controller,
          tabs: List.generate(
            tabs.length,
            (index) {
              return Tab(
                text: tabs[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
