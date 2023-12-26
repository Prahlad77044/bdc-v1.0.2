import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/custom_elevated_button.dart';
import 'package:bdc/widgets/custom_outlined_button.dart';
import 'package:bdc/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController provinceNumberController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController issueController = TextEditingController();

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
                      SizedBox(height: 49.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 22.h, right: 15.h, bottom: 58.v),
                                  child: Column(children: [
                                    Text("Sign Up",
                                        style: CustomTextStyles
                                            .headlineSmallPrimary),
                                    SizedBox(height: 38.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 7.h),
                                            child: Text("Please register below",
                                                style: CustomTextStyles
                                                    .bodyMediumSegoeUIBluegray900))),
                                    SizedBox(height: 16.v),
                                    _buildName(context),
                                    SizedBox(height: 16.v),
                                    _buildEmail(context),
                                    SizedBox(height: 16.v),
                                    _buildPassword(context),
                                    SizedBox(height: 18.v),
                                    _buildDateOfBirth(context),
                                    SizedBox(height: 18.v),
                                    _buildPhoneNumber(context),
                                    SizedBox(height: 13.v),
                                    _buildProvinceNumber(context),
                                    SizedBox(height: 16.v),
                                    _buildAddress(context),
                                    SizedBox(height: 32.v),
                                    Text(
                                        "Any medical issue? If any State below.",
                                        style: CustomTextStyles
                                            .bodyMediumPrimary_1),
                                    SizedBox(height: 20.v),
                                    _buildIssue(context),
                                    SizedBox(height: 30.v),
                                    _buildSELECTYOURBLOODGROUP(context),
                                    SizedBox(height: 26.v),
                                    _buildBROWSE1(context),
                                    SizedBox(height: 35.v),
                                    _buildBROWSE3(context),
                                    SizedBox(height: 26.v),
                                    _buildSignUp(context),
                                    SizedBox(height: 37.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 31.h, right: 33.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Already have an account?",
                                                  style: CustomTextStyles
                                                      .bodyMediumBlack900_1),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtLogIn(context);
                                                  },
                                                  child: Text("Log In",
                                                      style: CustomTextStyles
                                                          .titleSmallPrimary_1))
                                            ]))
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child:
            CustomTextFormField(controller: nameController, hintText: "Name"));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: CustomTextFormField(
            controller: dateOfBirthController,
            hintText: "Date of Birth (YY-MM-DD)"));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: CustomTextFormField(
            controller: phoneNumberController,
            hintText: "Phone Number",
            textInputType: TextInputType.phone));
  }

  /// Section Widget
  Widget _buildProvinceNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 4.h),
        child: CustomTextFormField(
            controller: provinceNumberController,
            hintText: "Province Number",
            textInputType: TextInputType.number,
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL20,
            filled: true,
            fillColor: theme.colorScheme.onPrimary));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 4.h),
        child: CustomTextFormField(
            controller: addressController,
            hintText: "Address ( City, District )",
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL20,
            filled: true,
            fillColor: theme.colorScheme.onPrimary));
  }

  /// Section Widget
  Widget _buildIssue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 4.h),
        child: CustomTextFormField(
            controller: issueController,
            hintText: "Issue",
            textInputAction: TextInputAction.done,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.h, vertical: 32.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL25));
  }

  /// Section Widget
  Widget _buildSELECTYOURBLOODGROUP(BuildContext context) {
    return CustomOutlinedButton(
        height: 39.v,
        text: "           SELECT YOUR BLOOD GROUP",
        margin: EdgeInsets.only(left: 7.h, right: 2.h),
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.titleSmallRobotoOnPrimary,
        onPressed: () {
          onTapSELECTYOURBLOODGROUP(context);
        });
  }

  /// Section Widget
  Widget _buildBROWSE(BuildContext context) {
    return CustomOutlinedButton(
        height: 39.v,
        width: 148.h,
        text: "BROWSE",
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary);
  }

  /// Section Widget
  Widget _buildBROWSE1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 13.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 12.v),
                  child: Text("Upload Profile Photo",
                      style: CustomTextStyles.titleSmallPrimary)),
              _buildBROWSE(context)
            ]));
  }

  /// Section Widget
  Widget _buildBROWSE2(BuildContext context) {
    return CustomOutlinedButton(
        height: 39.v,
        width: 148.h,
        text: "BROWSE",
        margin: EdgeInsets.only(left: 17.h, top: 2.v),
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary);
  }

  /// Section Widget
  Widget _buildBROWSE3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 13.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 150.h,
                  margin: EdgeInsets.only(bottom: 6.v),
                  child: Text("Upload Photo of the document",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallPrimary)),
              _buildBROWSE2(context)
            ]));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (){
      },
        text: "Sign Up",
        margin: EdgeInsets.only(left: 7.h),
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleSmallRobotoOnPrimary_1);
  }

  /// Navigates to the bloodTypeSelectScreen when the action is triggered.
  onTapSELECTYOURBLOODGROUP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bloodTypeSelectOneScreen);
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
