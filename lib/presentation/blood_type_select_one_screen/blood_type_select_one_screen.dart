import '../blood_type_select_one_screen/widgets/bloodtypeselectone_item_widget.dart';
import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bdc/widgets/app_bar/appbar_title_image.dart';
import 'package:bdc/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BloodTypeSelectOneScreen extends StatelessWidget {
  const BloodTypeSelectOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(

            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 48.h, top: 145.v, right: 48.h),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Padding(
                      padding: EdgeInsets.only(right: 5.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
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
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          46.h),
                                                  border: Border.all(
                                                      color: appTheme.black900,
                                                      width: 1.h)))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 24.v),
                                              child: Text("A+",
                                                  style: theme.textTheme
                                                      .headlineSmall)))
                                    ])),
                            SizedBox(
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
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          46.h),
                                                  border: Border.all(
                                                      color: appTheme.black900,
                                                      width: 1.h)))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 24.v),
                                              child: Text("A-",
                                                  style: theme.textTheme
                                                      .headlineSmall)))
                                    ]))
                          ])),
                  SizedBox(height: 21.v),
                  Padding(
                      padding: EdgeInsets.only(right: 5.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 86.v,
                                width: 93.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 25.v),
                                              child: Text("B+",
                                                  style: theme.textTheme
                                                      .headlineSmall))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 24.h, top: 21.v),
                                              child: Text("B-",
                                                  style: theme.textTheme
                                                      .headlineSmall))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 86.v,
                                              width: 93.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height: 86.v,
                                                            width: 93.h,
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(46
                                                                            .h),
                                                                border: Border.all(
                                                                    color: appTheme
                                                                        .black900,
                                                                    width:
                                                                        1.h)))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 25.v),
                                                            child: Text("B+",
                                                                style: theme
                                                                    .textTheme
                                                                    .headlineSmall)))
                                                  ])))
                                    ])),
                            SizedBox(
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
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          46.h),
                                                  border: Border.all(
                                                      color: appTheme.black900,
                                                      width: 1.h)))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 24.v),
                                              child: Text("B-",
                                                  style: theme.textTheme
                                                      .headlineSmall)))
                                    ]))
                          ])),
                  SizedBox(height: 21.v),
                  _buildBloodtypeselectOne(context),
                  SizedBox(height: 21.v)
                ]))));
  }


  /// Section Widget
  Widget _buildBloodtypeselectOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 87.v,
                crossAxisCount: 2,
                mainAxisSpacing: 88.h,
                crossAxisSpacing: 88.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return BloodtypeselectoneItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
