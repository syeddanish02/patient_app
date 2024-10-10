import 'dart:async';

import 'package:flutter/cupertino.dart';

class providerforProgressindicator with ChangeNotifier{
  double _progress = 0.0;

  double get progress => _progress;

  void setProgress(double newProgress) {
    _progress = newProgress;
    notifyListeners();
  }
}

class onboardingProvider extends ChangeNotifier{
  int _CurrentPage=0;
  int get CurrentPage=>_CurrentPage;
  void setpage(int page){
    _CurrentPage=page;
notifyListeners();
  }
}
class firstRdiotile with ChangeNotifier{
   String? _selectedOption = 'Option 1';
   String? get selectOption=> _selectedOption;


   void selection(String selctoption){
     _selectedOption=selctoption;
     notifyListeners();

   }
}
class RdioList with ChangeNotifier{
  String? _SelectRadio='Male';
  String? get selectRadio=> _SelectRadio;
  void selectedRadio(String selected){
    _SelectRadio=selected;
    notifyListeners();
  }
}
class DateProvider with ChangeNotifier {
  String? _dob = '';

  String? get dob => _dob;

  void setdob(String newDob) {
    _dob=newDob;
    notifyListeners();

  }

  }
class TaskStatusProvider extends  ChangeNotifier{
  bool _isDone=false;
  bool get isDone=>_isDone;
  void StartTask(){
    Timer(Duration(seconds: 5),(){
      _isDone=true;
      notifyListeners();

    });

  }
  void completeTask(){
    _isDone=true;
    notifyListeners();

  }
  void taskdefault(){
    _isDone=false;
    notifyListeners();
  }

}
class bottomNavigationProvider with ChangeNotifier{
  int _currentIndex=0;
  int get currentIndex=>_currentIndex;


  void setIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }

}