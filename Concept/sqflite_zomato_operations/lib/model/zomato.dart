class Zomato {
  int? orderNo;
  String customerName;
  String hotelName;
  double bill;

  Zomato({
    this.orderNo,
    required this.customerName,
    required this.hotelName,
    required this.bill,
  });

  @override
  String toString() {
    return 'orderNo: $orderNo,customerName:$customerName,hotelName:$hotelName,bill:$bill';
  }

  Map<String, dynamic> zomatoMap() {
    return {
      'orderNo': orderNo,
      'customerName': customerName,
      'hotelName': hotelName,
      'bill': bill,
    };
  }
}
