import 'package:chittychat/utils/constants/k_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class KPrimeFetching extends StatelessWidget {
  final double? height;
  const KPrimeFetching({this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: KButtonFetching(),
          )
        ],
      ),
    );
  }
}

class KButtonFetching extends StatelessWidget {
  final bool horizontalFetch;
  final Color? color;
  final double? size;
  const KButtonFetching({
    this.horizontalFetch = false,
    this.size = 30,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: horizontalFetch
          ? SpinKitThreeBounce(
              color: color ?? KColors.darkPrimary,
              size: size ?? 30,
            )
          : SpinKitCircle(
              color: color ?? KColors.darkPrimary,
              size: size ?? 60,
            ),
    );
  }
}
