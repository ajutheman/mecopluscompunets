// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:mecopluscompunets/screen/allergy_Search_Page.dart';
import 'package:mecopluscompunets/screen/allergy_Types_Page.dart';
import 'package:mecopluscompunets/screen/chief_Complaints.dart';
import 'package:mecopluscompunets/screen/doctors_Dashboard_Screen.dart';
import 'package:mecopluscompunets/screen/habits_Screen.dart';
import 'package:mecopluscompunets/screen/investigation_Prescriptions_Screen.dart';
import 'package:mecopluscompunets/screen/prescriptions_List_Screen.dart';
import 'package:mecopluscompunets/screen/search_Diagnosis_Screen.dart';
import 'package:mecopluscompunets/screen/splash_Screen.dart';
import 'package:mecopluscompunets/screen/test%20page.dart';
import 'package:mecopluscompunets/screen/treatments_List_Screen.dart';
import 'package:mecopluscompunets/screen/vaccines_List_Search_Page.dart';

class AppRoutes {
  static const String profileContainerScreen = '/profile_container_screen';
  static const String profilePage = '/profile_page';
  static const String doctorsDashboradScreen = '/doctors_dashborad_screen';
  static const String appoinmentViewPage = '/appoinment_view_page';
  static const String consultedPage = '/consulted_page';
  static const String treatmentsListScreen = '/treatments_list_screen';
  static const String investigationPrescriptionsDetailsScreen =
      '/investigation_prescriptions_details_screen';
  static const String splashScreen = '/splash_screen';
  static const String loginScreen = '/login_screen';
  static const String searchDiagnosisScreen = '/search_diagnosis_screen';
  static const String habitsScreen = '/habits_screen';
  static const String prescriptionsListScreen = '/prescriptions_list_screen';
  static const String investigationPrescriptionsScreen =
      '/investigation_prescriptions_screen';
  static const String frameScreen = '/frame_screen';
  static const String allergyTypesPageScreen = '/allergy_types_page_screen';
  static const String chiefComplaintsScreen = '/chief_complaints_screen';
  static const String allergiesPageScreen = '/allergies_page screen';
  static const String vaccinesListScreen = '/vaccines_list_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    // profileContainerScreen: (context) => ProfileContainerScreen(),
    doctorsDashboradScreen: (context) => DoctorsDashboradScreen(),
    treatmentsListScreen: (context) => TreatmentsListScreen(),
    investigationPrescriptionsDetailsScreen: (context) =>
        InvestigationPrescriptionsScreen(),
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    searchDiagnosisScreen: (context) => SearchDiagnosisScreen(),
    habitsScreen: (context) => HabitsScreen(),
    prescriptionsListScreen: (context) => PrescriptionsListScreen(),
    investigationPrescriptionsScreen: (context) =>
        InvestigationPrescriptionsScreen(),
    // frameScreen: (context) => FrameScreen(),
    allergyTypesPageScreen: (context) => AllergyTypesPageScreen(),
    chiefComplaintsScreen: (context) => ChiefComplaintsScreen(),
    allergiesPageScreen: (context) => AllergiesPageScreen(),
    vaccinesListScreen: (context) => VaccinesListScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LoginScreen()
  };
}
