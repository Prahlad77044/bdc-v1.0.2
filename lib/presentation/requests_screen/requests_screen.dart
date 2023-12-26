import '../requests_screen/widgets/requests_item_widget.dart';
import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/custom_elevated_button.dart';
import 'package:bdc/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red[800],
              elevation: 0
              ,
            ),

            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Column(children: [
                      _buildRequests(context),
                      _buildSeventy(context)
                    ])))));
  }


  }

  /// Section Widget
  Widget _buildRequests(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return RequestsItemWidget();
        });
  }

  /// Section Widget
  Widget _buildAccept(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            height: 38.v,
            text: "Accept",
            margin: EdgeInsets.only(top: 1.v, right: 19.h)));
  }

  /// Section Widget
  Widget _buildReject(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            height: 38.v, text: "Reject", margin: EdgeInsets.only(left: 19.h)));
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 19.v),
        decoration: AppDecoration.outlineGray,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 9.v),
                child: Text("Name", style: CustomTextStyles.bodySmallGray500)),
            Padding(
                padding: EdgeInsets.only(left: 15.h),
                child:
                    Text("Dr. Will Tunde", style: theme.textTheme.titleMedium))
          ]),
          SizedBox(height: 22.v),
          Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                child:
                    Text("Location", style: CustomTextStyles.bodySmallGray500)),
            Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text("General Hospital, Barracks",
                    style: CustomTextStyles.bodySmallGray800_1))
          ]),
          SizedBox(height: 19.v),
          Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                child:
                    Text("Address", style: CustomTextStyles.bodySmallGray500)),
            Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text("1, Abiola Way, Akure",
                    style: CustomTextStyles.bodySmallGray800_1))
          ]),
          SizedBox(height: 18.v),
          Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                child: Text("Date ", style: CustomTextStyles.bodySmallGray500)),
            Padding(
                padding: EdgeInsets.only(left: 22.h),
                child:
                    Text("3/3/21", style: CustomTextStyles.bodySmallGray800_1))
          ]),
          SizedBox(height: 4.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h, right: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [_buildAccept(context), _buildReject(context)])),
          SizedBox(height: 26.v)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

