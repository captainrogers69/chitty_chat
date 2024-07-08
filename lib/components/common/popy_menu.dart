import 'package:flutter/material.dart';

import '../../utils/constants/k_colors.dart';

class PopyMenu extends StatelessWidget {
  final List<PopupMenuEntry<int>> popUps;
  final Function(int) onSelected;
  final IconData? iconData;
  final Widget? icon;
  const PopyMenu(
      {required this.onSelected,
      required this.popUps,
      this.iconData,
      this.icon,
      super.key})
      : assert(
          iconData == null || icon == null,
          "\n******\n Either one of Icon or IconData must be provided \n******\n",
        );

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      surfaceTintColor: KColors.whiteColor,
      color: KColors.whiteColor,
      shadowColor: KColors.whiteColor,
      // lightGreyColor,
      elevation: 7,
      onOpened: () {
        // Vibrate.feedback(FeedbackType.success);
      },
      // shape: eventStandardShape,
      padding: const EdgeInsets.all(0),
      onSelected: onSelected,
      itemBuilder: (context) => popUps,
      icon: icon ??
          Icon(
            iconData ?? Icons.more_vert,
            color: KColors.whiteColor,
          ),
    );
  }
}
