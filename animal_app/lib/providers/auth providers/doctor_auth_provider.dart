import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../models/doctor_model.dart';

class DoctorAuthProvider with ChangeNotifier {
  /// Register a new doctor
  Future<Map<String, dynamic>> registerDoctor(Doctor doctor) async {
    const url = 'http://localhost:5000/doctor/'; // Ensure backend route is correct
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(doctor.toJson()),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        // Return the response to the UI
        return {
          'success': true,
          'message': responseData['message'] ?? 'Registration Successful!',
          'data': responseData['data']
        };
      } else {
        final responseData = json.decode(response.body);
        throw Exception(responseData['message'] ?? 'Registration failed');
      }
    } catch (error) {
      // Rethrow the error to be handled in the UI
      rethrow;
    }
  }

  /// Login an existing doctor
  Future<Map<String, dynamic>> loginDoctor(String email, String password) async {
    const url = 'http://localhost:5000/doctor/login'; // Ensure backend route is correct
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        // Return the success response to the UI
        return {
          'success': true,
          'message': 'Login Successful!',
          'token': responseData['token']
        };
      } else {
        final responseData = json.decode(response.body);
        throw Exception(responseData['message'] ?? 'Login failed');
      }
    } catch (error) {
      // Rethrow the error to be handled in the UI
      rethrow;
    }
  }
}
