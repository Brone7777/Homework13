class FoodItem {
  final int id;
  final int price;
  final String name;
  final String images;

  FoodItem(
      {required this.id,
      required this.price,
      required this.name,
      required this.images});

  @override
  String toString() {
    return "$name ราคา $price บาท";
  }
}
