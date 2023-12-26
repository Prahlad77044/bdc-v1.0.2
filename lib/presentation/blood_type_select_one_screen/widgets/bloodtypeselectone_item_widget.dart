import 'package:bdc/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BloodtypeselectoneItemWidget extends StatelessWidget {
  const BloodtypeselectoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.v,
      width: 93.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 86.v,
              width: 93.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  46.h,
                ),
                border: Border.all(
                  color: appTheme.black900,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 24.v),
              child: Text(
                "AB+",
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
