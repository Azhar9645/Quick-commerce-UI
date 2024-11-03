import 'dart:convert';
import 'package:bw_assignment1/data/models/notification_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // Fetches notifications from the API.
  static Future<List<Notification>> getNotification() async {
    const String apiUrl = 'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
    try {
      // Send GET request to the API.
      var response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        // Parse JSON in an isolate to avoid blocking the main thread.
        return compute(_parseNotification, response.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      } // Logs any error that occurs during the fetch.
    }
    return [];
  }
}

// Parses the JSON data using an isolate, returning a list of Notification objects.
List<Notification> _parseNotification(String responseBody) {
  final List<dynamic> data = jsonDecode(responseBody)['data'];
  return data.map((json) => Notification.fromJson(json)).toList().cast<Notification>();
}
