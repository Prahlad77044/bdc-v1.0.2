import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/custom_checkbox_button.dart';
import 'package:bdc/widgets/custom_drop_down.dart';
import 'package:bdc/widgets/custom_elevated_button.dart';
import 'package:bdc/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DonorDetailScreen extends StatelessWidget {
  DonorDetailScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController provinceNumberController = TextEditingController();

  TextEditingController districtController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController cityController = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  bool bySubmittingtheformIherebydecl = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text('Details'),
            ),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 22.h, right: 15.h, bottom: 50.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Text("Please enter your full detail",
                                      style:
                                          CustomTextStyles.bodyMediumGray900))),
                          SizedBox(height: 17.v),
                          _buildName(context),
                          SizedBox(height: 73.v),
                          _buildProvinceNumber(context),
                          SizedBox(height: 18.v),
                          _buildDistrict1(context),
                          SizedBox(height: 19.v),
                          _buildCity1(context),
                          SizedBox(height: 18.v),
                          _buildDateOfBirth(context),
                          SizedBox(height: 16.v),
                          _buildEmail(context),
                          SizedBox(height: 12.v),
                          _buildGender(context),
                          SizedBox(height: 16.v),
                          _buildPhoneNumber(context),
                          SizedBox(height: 33.v),
                          _buildBySubmittingtheformIherebydecl(context),
                          SizedBox(height: 8.v),
                          _buildSubmit(context)
                        ]))))));
  }


  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController,
        hintText: "Name",
        hintStyle: CustomTextStyles.bodySmallGray500_1);
  }

  /// Section Widget
  Widget _buildProvinceNumber(BuildContext context) {
    return CustomTextFormField(
        controller: provinceNumberController,
        hintText: "Province Number",
        hintStyle: CustomTextStyles.bodySmallGray500_1,
        textInputType: TextInputType.number);
  }

  /// Section Widget
  Widget _buildDistrict(BuildContext context) {
    return CustomTextFormField(
        width: 331.h,
        controller: districtController,
        hintText: "District",
        hintStyle: CustomTextStyles.bodySmallGray500_1,

    );
  }

  /// Section Widget
  Widget _buildDistrict1(BuildContext context) {
    return SizedBox(
        height: 41.v,
        width: 331.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildDistrict(context),
          Padding(
              padding: EdgeInsets.only(top: 10.v, right: 50.h),
              child: CustomDropDown(
                  width: 17.h,
                  icon: SizedBox(
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 7.v,
                          width: 7.h)),
                  alignment: Alignment.topRight,
                  items: dropdownItemList,
                  onChanged: (value) {}))
        ]));
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return CustomTextFormField(
        width: 331.h,
        controller: cityController,
        hintText: "City",
        hintStyle: CustomTextStyles.bodySmallGray500_1,
        );
  }

  /// Section Widget
  Widget _buildCity1(BuildContext context) {
    return SizedBox(
        height: 41.v,
        width: 331.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildCity(context),
          Padding(
              padding: EdgeInsets.only(top: 10.v, right: 50.h),
              child: CustomDropDown(
                  width: 17.h,
                  icon: SizedBox(
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 7.v,
                          width: 17.h)),
                  alignment: Alignment.topRight,
                  items: dropdownItemList1,
                  onChanged: (value) {}))
        ]));
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomTextFormField(
        controller: dateOfBirthController,
        hintText: "Date of Birth (YY-MM-DD)",
        hintStyle: CustomTextStyles.bodySmallGray500_1,
        contentPadding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildGender(BuildContext context) {
    return CustomTextFormField(
        controller: genderController,
        hintText: "Gender",
        hintStyle: CustomTextStyles.bodySmallGray500_1,
        contentPadding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 13.v));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
        controller: phoneNumberController,
        hintText: "Phone Number",
        hintStyle: CustomTextStyles.bodySmallGray500_1,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.phone);
  }

  /// Section Widget
  Widget _buildBySubmittingtheformIherebydecl(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: CustomCheckboxButton(
            text:
                "By Submitting the form I hereby declare that I am 18 or above years old and wish to donate blood when needed.",
            isExpandedText: true,
            value: bySubmittingtheformIherebydecl,
            onChange: (value) {
              bySubmittingtheformIherebydecl = value;
            }));
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
        text: "Submit",
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
