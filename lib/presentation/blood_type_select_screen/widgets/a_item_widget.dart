import 'package:bdc/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AItemWidget extends StatelessWidget {
  const AItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 14.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "A+",
        style: TextStyle(
          color: theme.colorScheme.onPrimary,
          fontSize: 24.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          25.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
