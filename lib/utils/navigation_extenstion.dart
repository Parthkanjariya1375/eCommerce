import 'package:flutter/material.dart';

extension NavigationExtenstion on BuildContext {
  Future<Object> goToNext(Widget child) async {
    return Navigator.push(this, MaterialPageRoute(builder: (context) => child));
  }

  Future<Object> goToNextWithReplace(Widget child) async {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => child),
    );
  }

  Future<Object> goToNextWithRemoveUntil(Widget child) async {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => child),
      (route) => false,
    );
  }

  void goback([Object? argument]) {
    Navigator.pop(this, argument);
  }
}
