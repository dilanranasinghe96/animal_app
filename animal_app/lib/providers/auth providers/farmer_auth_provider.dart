import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/farmer_model.dart';

class FarmerAuthProvider with ChangeNotifier {
  String? _token;
  bool _isAuthenticated = false;

  String? get token => _token;
  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String nicNo, String password) async {
    const url = 'http://localhost:5000/user/login';
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode({
            'NIC_no': nicNo,
            'password': password,
          }));

      final responseData = json.decode(response.body);

      if (responseData['success'] == 1) {
        _token = responseData['token'];
        _isAuthenticated = true;
        notifyListeners();
      } else {
        throw Exception('Invalid credentials');
      }
    } catch (error) {
      rethrow;
    }
  }

  Future<void> signUp(Farmer farmer) async {
    const url = 'http://localhost:5000/user/';
    try {
      final response =
          await http.post(Uri.parse(url), body: json.encode(farmer.toJson()));

      final responseData = json.decode(response.body);

      if (responseData['success'] == 1) {
        _token = responseData['token'];
        _isAuthenticated = true;
        notifyListeners();
      } else {
        throw Exception('Sign up failed');
      }
    } catch (error) {
      rethrow;
    }
  }
}
