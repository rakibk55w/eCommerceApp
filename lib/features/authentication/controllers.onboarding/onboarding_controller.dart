import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  final currentPageIndex = 0.obs;

  void updatePageIndicator(index){
    print(index);
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index){
    print(index);
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage(){
    print(currentPageIndex.value);
    if(currentPageIndex.value == 2){
      //Do something
    }
    else{
      pageController.jumpTo(currentPageIndex.value + 1);
    }
  }

  void skipPage(){
    print(currentPageIndex.value);
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}