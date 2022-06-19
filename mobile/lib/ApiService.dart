// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

String server_adress = defaultTargetPlatform == TargetPlatform.windows
    ? "https://localhost:7002/"
    : "http://10.0.2.2:5000/api/";

class APIService {
  String route;
  APIService({required this.route});

  static Future<List<dynamic>?> Get(String route, dynamic object) async {
    String baseUrl = server_adress + route;

    final response = await http.get(
      Uri.parse(baseUrl),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as List;
    }
    return null;
  }
}
