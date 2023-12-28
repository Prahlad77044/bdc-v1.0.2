
import 'package:bdc/presentation/Customer%20Support/customer_support.dart';
import 'package:flutter/material.dart';
import 'package:bdc/presentation/welcome_screen/welcome_screen.dart';
import 'package:bdc/presentation/upload_photo_screen/upload_photo_screen.dart';
import 'package:bdc/presentation/upload_photo_two_screen/upload_photo_two_screen.dart';

import 'package:bdc/presentation/upload_document_screen/upload_document_screen.dart';
import 'package:bdc/presentation/upload_document_two_screen/upload_document_two_screen.dart';
import 'package:bdc/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:bdc/presentation/contact_donor_screen/contact_donor_screen.dart';
import 'package:bdc/presentation/appointment_page_three_tab_container_screen/appointment_page_three_tab_container_screen.dart';
import 'package:bdc/presentation/log_in_screen/log_in_screen.dart';
import 'package:bdc/presentation/st_step_of_new_password_screen/st_step_of_new_password_screen.dart';
import 'package:bdc/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:bdc/presentation/new_password_screen/new_password_screen.dart';
import 'package:bdc/presentation/donor_list_screen/donor_list_screen.dart';
import 'package:bdc/presentation/doc_request_one_screen/doc_request_one_screen.dart';
import 'package:bdc/presentation/home_page_screen/home_page_screen.dart';
import 'package:bdc/presentation/donate_from_home_bottomsheet/donate_from_home_bottomsheet.dart';
import 'package:bdc/presentation/rewards_screen/rewards_screen.dart';
import 'package:bdc/presentation/profile_screen/profile_screen.dart';
import 'package:bdc/presentation/donor_detail_screen/donor_detail_screen.dart';
import 'package:bdc/presentation/info_screen/info_screen.dart';
import 'package:bdc/presentation/upload_profile_photo_two_screen/upload_profile_photo_two_screen.dart';
import 'package:bdc/presentation/upload_profile_photo_screen/upload_profile_photo_screen.dart';
import 'package:bdc/presentation/requests_screen/requests_screen.dart';
import 'package:bdc/presentation/doc_home_page_screen/doc_home_page_screen.dart';
import 'package:bdc/presentation/history_screen/history_screen.dart';
import 'package:bdc/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String uploadPhotoScreen = '/upload_photo_screen';

  static const String uploadPhotoTwoScreen = '/upload_photo_two_screen';

  static const String profileScreen = '/profile_screen';

  static const String bloodTypeSelectScreen = '/blood_type_select_screen';

  static const String uploadDocumentScreen = '/upload_document_screen';

  static const String uploadDocumentTwoScreen = '/upload_document_two_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String contactDonorScreen = '/contact_donor_screen';

  static const String appointmentPageFivePage = '/appointment_page_five_page';

  static const String appointmentPageThreePage = '/appointment_page_three_page';

  static const String appointmentPageThreeTabContainerScreen =
      '/appointment_page_three_tab_container_screen';

  static const String logInScreen = '/log_in_screen';

  static const String stStepOfNewPasswordScreen =
      '/st_step_of_new_password_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String donorListScreen = '/donor_list_screen';

  static const String docRequestOneScreen = '/doc_request_one_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String rewardsScreen = '/rewards_screen';

  static const String bloodTypeSelectOneScreen =
      '/blood_type_select_one_screen';

  static const String donorDetailScreen = '/donor_detail_screen';

  static const String customerSupport = '/customer_support';

  static const String uploadProfilePhotoTwoScreen =
      '/upload_profile_photo_two_screen';


  static const String uploadProfilePhotoScreen = '/upload_profile_photo_screen';

  static const String requestsScreen = '/requests_screen';

  static const String docHomePageScreen = '/doc_home_page_screen';

  static const String historyScreen = '/history_screen';

  static const String infoScreen = '/info_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String  donateFromHomeBottomsheet= '/donate_from_home_bottomsheet.dart';

  static Map<String, WidgetBuilder> routes = {

    welcomeScreen: (context) => WelcomeScreen(),
    infoScreen: (context) => InfoScreen(),
    uploadPhotoScreen: (context) => UploadPhotoScreen(),
    uploadPhotoTwoScreen: (context) => UploadPhotoTwoScreen(),
    profileScreen:(context) => ProfileScreen(),
    uploadDocumentScreen: (context) => UploadDocumentScreen(),
    uploadDocumentTwoScreen: (context) => UploadDocumentTwoScreen(),
    signUpScreen: (context) => SignUpScreen(),
    customerSupport:(context)=>CustomerSupport(),
    contactDonorScreen: (context) => ContactDonorScreen(),
    rewardsScreen:(context)=> RewardsScreen(),
    appointmentPageThreeTabContainerScreen: (context) =>
        AppointmentPageThreeTabContainerScreen(),
    logInScreen: (context) => LogInScreen(),
    stStepOfNewPasswordScreen: (context) => StStepOfNewPasswordScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    newPasswordScreen: (context) => NewPasswordScreen(),
    donorListScreen: (context) => DonorListScreen(),
    docRequestOneScreen: (context) => DocRequestOneScreen(),
    homePageScreen: (context) => HomePageScreen(),
    donorDetailScreen: (context) => DonorDetailScreen(),
    uploadProfilePhotoTwoScreen: (context) => UploadProfilePhotoTwoScreen(),
    uploadProfilePhotoScreen: (context) => UploadProfilePhotoScreen(),
    requestsScreen: (context) => RequestsScreen(),
    docHomePageScreen: (context) => DocHomePageScreen(),
    historyScreen: (context) => HistoryScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    donateFromHomeBottomsheet: (context)=> DonateFromHomeBottomsheet(),

  };
}
