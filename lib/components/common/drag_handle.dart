import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/k_colors.dart';
import '../../utils/extensions/container_ext.dart';

class DragHandle extends StatelessWidget {
  final double? width, height;
  final Color? color;
  const DragHandle({
    this.height,
    this.color,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: ContainerExt.eventRadiusSmall,
            color: color ?? KColors.darkPrimary,
          ),
          width: width ?? .17.w,
          height: height ?? 6,
        ),
      ],
    );
  }
}
