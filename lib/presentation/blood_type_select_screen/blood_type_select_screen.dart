import '../blood_type_select_screen/widgets/a_item_widget.dart';
import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bdc/widgets/app_bar/appbar_title_image.dart';
import 'package:bdc/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BloodTypeSelectScreen extends StatelessWidget {
  const BloodTypeSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(appBar: _buildAppBar(context), body: _buildA(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 127.v,
        centerTitle: true,
        title: SizedBox(
            height: 127.v,
            width: double.maxFinite,
            child: Stack(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgEllipse33),
              Padding(
                  padding: EdgeInsets.fromLTRB(21.h, 40.v, 66.h, 61.v),
                  child: Row(children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgArrowLeft,
                        margin: EdgeInsets.only(top: 6.v, bottom: 7.v),
                        onTap: () {
                          onTapArrowLeft(context);
                        }),
                    AppbarSubtitleOne(
                        text: "Pick Your Blood Group",
                        margin: EdgeInsets.only(left: 44.h))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildA(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 185.v),
        child: Wrap(
            runSpacing: 51.v,
            spacing: 51.h,
            children: List<Widget>.generate(8, (index) => AItemWidget())));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
