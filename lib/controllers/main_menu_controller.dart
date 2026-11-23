import 'package:pas_flutter_11_s1/menu/feat_page.dart';
import 'package:pas_flutter_11_s1/menu/home_page.dart';
import 'package:pas_flutter_11_s1/menu/profile_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MainMenuController extends GetxController{
   final RxInt selectedIndex = 0.obs;

   void changePage(int index) {
     selectedIndex.value = index;
   }

   List<Widget> listPages = [Home(),Feat(),Profile()];
}