class ChartPoint {
  final String month;
  final int year;
  final String company;
  final double quantity;

  ChartPoint({required this.month, required this.year, required this.company, required this.quantity});

  factory ChartPoint.fromJson(Map<String, dynamic> json) {
    return ChartPoint(
      month: json['_month_'] as String,
      year: int.parse(json['year'].toString()),
      company: json['oil_companies_'] as String,
      quantity: double.parse(json['quantity_000_metric_tonnes_'].toString()),
    );
  }
}