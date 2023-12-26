import '../donor_list_screen/widgets/donorlist_item_widget.dart';
import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/app_bar/appbar_leading_image.dart';
import 'package:bdc/widgets/app_bar/appbar_subtitle.dart';
import 'package:bdc/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DonorListScreen extends StatelessWidget {
  const DonorListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 23.v),
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  Text("Select from the list of donors to request",
                      style: CustomTextStyles.labelLargePrimary),
                  SizedBox(height: 15.v),
                  _buildDonorList(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 24.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Donor’s List", margin: EdgeInsets.only(left: 80.h)));
  }

  /// Section Widget
  Widget _buildDonorList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 7.v);
                },
                itemCount: 1,
                itemBuilder: (context, index) {
                  return DonorlistItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
