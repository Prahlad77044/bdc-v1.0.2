import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32.h, vertical: 36.v),
                                  decoration: AppDecoration.fillPrimary,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowLeft,
                                            height: 11.v,
                                            width: 7.h,
                                            margin: EdgeInsets.only(
                                                top: 6.v, bottom: 721.v),
                                            onTap: () {
                                              onTapImgArrowLeft(context);
                                            }),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 26.h, bottom: 713.v),
                                            child: Text("History",
                                                style:
                                                    theme.textTheme.titleLarge))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32.h, vertical: 15.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildName(context,
                                            name: "Name",
                                            drWillTunde: "Dr. Will Tunde"),
                                        SizedBox(height: 13.v),
                                        _buildLocation(context,
                                            location: "Location",
                                            generalHospital:
                                                "General Hospital, Barracks"),
                                        SizedBox(height: 12.v),
                                        _buildAddress(context,
                                            address: "Address",
                                            abiolaWayAkure:
                                                "1, Abiola Way, Akure"),
                                        SizedBox(height: 10.v),
                                        _buildDate(context,
                                            date: "Date ",
                                            threeThousandThreeHundredTwent:
                                                "3/3/21"),
                                        SizedBox(height: 19.v),
                                        CustomElevatedButton(
                                            height: 38.v,
                                            text: "Accepted",
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 32.h),
                                            buttonStyle:
                                                CustomButtonStyles.fillGreenAA,
                                            buttonTextStyle: CustomTextStyles
                                                .labelLargeGray900,
                                            alignment: Alignment.center),
                                        SizedBox(height: 218.v),
                                        _buildName(context,
                                            name: "Name",
                                            drWillTunde: "Dr. Will Tunde"),
                                        SizedBox(height: 13.v),
                                        _buildLocation(context,
                                            location: "Location",
                                            generalHospital:
                                                "General Hospital, Barracks"),
                                        SizedBox(height: 12.v),
                                        _buildAddress(context,
                                            address: "Address",
                                            abiolaWayAkure:
                                                "1, Abiola Way, Akure"),
                                        SizedBox(height: 10.v),
                                        _buildDate(context,
                                            date: "Date ",
                                            threeThousandThreeHundredTwent:
                                                "3/3/21"),
                                        SizedBox(height: 16.v),
                                        CustomElevatedButton(
                                            height: 38.v,
                                            text: "Rejected",
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 32.h),
                                            buttonStyle: CustomButtonStyles
                                                .fillDeepOrange,
                                            buttonTextStyle: CustomTextStyles
                                                .labelLargeGray900,
                                            alignment: Alignment.center),
                                        SizedBox(height: 16.v)
                                      ]))),
                          _buildAccepted(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildAccepted(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 274.v),
            padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 14.v),
            decoration: AppDecoration.outlineGray,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildName(context,
                      name: "Name", drWillTunde: "Dr. Will Tunde"),
                  SizedBox(height: 13.v),
                  _buildLocation(context,
                      location: "Location",
                      generalHospital: "General Hospital, Barracks"),
                  SizedBox(height: 12.v),
                  _buildAddress(context,
                      address: "Address",
                      abiolaWayAkure: "1, Abiola Way, Akure"),
                  SizedBox(height: 10.v),
                  _buildDate(context,
                      date: "Date ", threeThousandThreeHundredTwent: "3/3/21"),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                      height: 38.v,
                      text: "Accepted",
                      margin: EdgeInsets.symmetric(horizontal: 32.h),
                      buttonStyle: CustomButtonStyles.fillGreenAA,
                      buttonTextStyle: CustomTextStyles.labelLargeGray900,
                      alignment: Alignment.center)
                ])));
  }

  /// Common widget
  Widget _buildName(
    BuildContext context, {
    required String name,
    required String drWillTunde,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 7.v, bottom: 1.v),
          child: Text(name,
              style: CustomTextStyles.bodySmallGray500
                  .copyWith(color: appTheme.gray500))),
      Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Text(drWillTunde,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray800)))
    ]);
  }

  /// Common widget
  Widget _buildLocation(
    BuildContext context, {
    required String location,
    required String generalHospital,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
          child: Text(location,
              style: CustomTextStyles.bodySmallGray500
                  .copyWith(color: appTheme.gray500))),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(generalHospital,
              style: CustomTextStyles.bodySmallGray800_1
                  .copyWith(color: appTheme.gray800)))
    ]);
  }

  /// Common widget
  Widget _buildAddress(
    BuildContext context, {
    required String address,
    required String abiolaWayAkure,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
          child: Text(address,
              style: CustomTextStyles.bodySmallGray500
                  .copyWith(color: appTheme.gray500))),
      Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: Text(abiolaWayAkure,
              style: CustomTextStyles.bodySmallGray800_1
                  .copyWith(color: appTheme.gray800)))
    ]);
  }

  /// Common widget
  Widget _buildDate(
    BuildContext context, {
    required String date,
    required String threeThousandThreeHundredTwent,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
          child: Text(date,
              style: CustomTextStyles.bodySmallGray500
                  .copyWith(color: appTheme.gray500))),
      Padding(
          padding: EdgeInsets.only(left: 22.h),
          child: Text(threeThousandThreeHundredTwent,
              style: CustomTextStyles.bodySmallGray800_1
                  .copyWith(color: appTheme.gray800)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

