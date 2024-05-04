// import 'package:flutter/cupertino.dart';
import 'package:education_app/screens/teacherbase_screen.dart';
import 'package:education_app/screens/adminbase_screen.dart';
import 'package:education_app/screens/base_screen.dart';
import 'package:get/get.dart';
import 'package:education_app/screens/studentlist_screen.dart';
import 'package:education_app/screens/teacherlist_screen.dart';


class RouteHelper{
  static const String initial = "/";
  static const String teacherlist = "/1";
  static const String studentlist = "/4";
  static const String adminContext = "/Admin";
  static const String teacherContext = "/Teacher";
  static const String studentContext = "/Student";

  static String getlist(String kategori) => '/$kategori';
  static String gettocontext(String usercontext) => '/$usercontext';

  static List<GetPage> routes=[
    GetPage(name: initial, page: () => const BaseScreen()),
    GetPage(name: teacherlist, page: () => const TeacherListScreen()),
    GetPage(name: studentlist, page: () => const StudentListScreen()),
    GetPage(name: teacherContext, page: () => const TeacherBaseScreen()),
    GetPage(name: adminContext, page: () => const AdminBaseScreen())
  ];
}