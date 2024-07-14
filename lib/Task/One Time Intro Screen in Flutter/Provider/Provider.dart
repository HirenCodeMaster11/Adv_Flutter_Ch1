import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageProvider extends ChangeNotifier
{
  int currentPage = 0;
  final PageController pageController = PageController();

  late SharedPreferences sharedPreferences;
  bool isShow = false;

  Future<void> setData(bool isShow)async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('show',isShow);
  }

  void removeScreen(){
    isShow = true;
    setData(isShow);
    notifyListeners();
  }

  Future<void> getData()async {
    sharedPreferences = await SharedPreferences.getInstance();
    isShow = sharedPreferences.getBool('show') ?? false;
  }

  PageProvider(){
    getData();
  }
  void pageViewController(int index)
  {
    currentPage = index;
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}