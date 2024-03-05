const String currencySymbol = '৳';

sealed class OrderStatus {
  static const String pending = 'Pending';
  static const String delivered = 'Delivered';
  static const String cancelled = 'Cancelled';
  static const String processing = 'Processing}';
}