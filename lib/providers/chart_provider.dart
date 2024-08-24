import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/api_service.dart';
import '../models/chart_data.dart';

final apiServiceProvider = Provider((ref) => ApiService());

final chartDataProvider = FutureProvider<List<ChartPoint>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.fetchChartData();
});