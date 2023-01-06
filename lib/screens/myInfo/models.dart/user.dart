import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class UserModel with ChangeNotifier {
  String _id = "";
  String _password = "";
  String _name = "";
  String _email = "";
  String _phonenum = "";
  String _nickname = "";

  String get id => _id;
  String get password => _password;
  String get name => _name;
  String get email => _email;
  String get phonenum => _phonenum;
  String get nickname => _nickname;

  void set id(String input_id) {
    _id = input_id;
    notifyListeners();
  }

  void set password(String input_password) {
    _password = input_password;
    notifyListeners();
  }

  void set name(String input_name) {
    _name = input_name;
    notifyListeners();
  }

  void set email(String input_email) {
    _email = input_email;
    notifyListeners();
  }

  void set phonenum(String input_phonenum) {
    _phonenum = input_phonenum;
    notifyListeners();
  }

  void set nickname(String input_nickname) {
    _nickname = input_nickname;
    notifyListeners();
  }
}
