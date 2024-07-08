import 'package:flutter/material.dart';

class ContainerExt {
  static final List<BoxShadow> eventBoxShadow = [
    const BoxShadow(
      offset: Offset(2, 2),
      blurRadius: 12,
      color: Color.fromRGBO(0, 0, 0, 0.16),
    )
  ];

  static final List<BoxShadow> eventTopBoxShadow = [
    const BoxShadow(
      offset: Offset(-12, -12),
      blurRadius: 12,
      color: Color.fromRGBO(0, 0, 0, 0.16),
    )
  ];

  static final Border stanBorder = Border.all(color: Colors.black, width: 1.5);
  static final Border stanBlueBorder =
      Border.all(color: Colors.black, width: 1.5);
  static final Border smallBorder = Border.all(color: Colors.black);
  static final Border smallBlueBorder = Border.all(color: Colors.blue);

  static final BorderRadius eventRadiusSmaller = BorderRadius.circular(5);
  static final BorderRadius eventRadiusSmall = BorderRadius.circular(8);
  static final BorderRadius eventRadiusStan = BorderRadius.circular(11);
  static final BorderRadius eventRadiusMidder = BorderRadius.circular(15);
  static final BorderRadius eventRadiusMid = BorderRadius.circular(21);
  static final BorderRadius eventRadiusCircular = BorderRadius.circular(81);

  static const BorderRadius eventSmallTopShape = BorderRadius.only(
    topLeft: Radius.circular(5),
    topRight: Radius.circular(5),
  );

  static const BorderRadius eventRoundedShape = BorderRadius.only(
    topLeft: Radius.circular(11),
    topRight: Radius.circular(11),
  );

  static const ShapeBorder eventRoundedShapeStan = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(11),
      topRight: Radius.circular(11),
    ),
  );

  static final ShapeBorder eventStandardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  );

  static final OutlinedBorder eventStandardShapeOutline =
      RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(7),
  );

  static final ShapeBorder eventCircularShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(300),
  );

  static final ShapeBorder eventStandardMidShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(11),
  );

  static final ShapeBorder eventMidShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(11),
  );

  static const ShapeBorder eventRoundedShapeMid = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(21),
      topRight: Radius.circular(21),
    ),
  );

  static const marginSymmetric =
      EdgeInsets.symmetric(vertical: 7, horizontal: 5);
}
