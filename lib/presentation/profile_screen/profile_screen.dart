import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bdc/widgets/app_bar/appbar_title_image.dart';
import 'package:bdc/widgets/app_bar/custom_app_bar.dart';
import 'package:bdc/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      _buildArrowLeft(context),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 20.v),
                          child: Column(children: [
                            _buildName(context),
                            SizedBox(height: 9.v),
                            _buildEmail(context),
                            SizedBox(height: 9.v),
                            _buildPassword(context),
                            SizedBox(height: 7.v),
                            _buildDateOfBirth(context),
                            SizedBox(height: 13.v),
                            _buildPhoneNumber(context),
                            SizedBox(height: 5.v)
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return SizedBox(
        height: 200.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 11.v,
              width: 7.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 21.h, top: 40.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          CustomAppBar(
              height: 118.v,
              centerTitle: true,
              title: SizedBox(
                  height: 118.v,
                  width: double.maxFinite,
                  child: Stack(children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgEllipse33118x375),
                    Padding(
                        padding: EdgeInsets.fromLTRB(25.h, 30.v, 160.h, 62.v),
                        child: Row(children: [
                          AppbarTitleImage(
                              imagePath: ImageConstant.imgArrowLeft,
                              margin: EdgeInsets.only(top: 9.v, bottom: 4.v),
                              onTap: () {
                                onTapArrowLeft(context);
                              }),
                          AppbarSubtitleOne(
                              text: "Profile",
                              margin: EdgeInsets.only(left: 114.h))
                        ]))
                  ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(left: 107.h),
                  color: theme.colorScheme.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder71),
                  child: Container(
                      height: 142.v,
                      width: 147.h,
                      padding: EdgeInsets.symmetric(vertical: 11.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder71),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle74,
                            height: 119.v,
                            width: 122.h,
                            radius: BorderRadius.circular(59.h),
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 21.v,
                            width: 25.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 1.v))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(controller: nameController, hintText: "Name");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomTextFormField(
        controller: dateOfBirthController,
        hintText: "Date of Birth (YY-MM-DD)");
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
        controller: phoneNumberController,
        hintText: "Phone Number",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.phone);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
