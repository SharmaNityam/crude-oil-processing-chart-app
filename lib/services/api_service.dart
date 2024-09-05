import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/chart_data.dart';

class ApiService {
  final String baseUrl =; //enter the api url
  final String apiKey =; //enter the api key

  Future<List<ChartPoint>> fetchChartData() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl?api-key=$apiKey&format=json&offset=0&limit=20'),
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        if (jsonResponse['records'] == null) {
          throw Exception('No records found in the API response');
        }
        List<dynamic> records = jsonResponse['records'];
        return records.map((record) => ChartPoint.fromJson(record)).toList();
      } else {
        throw Exception('Failed to load chart data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load chart data: $e');
    }
  }
}
