part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});
}

Food mockFood = Food(
  id: 1,
  picturePath:
      "https://2.bp.blogspot.com/-LQIhtDtiOH0/Wv4CdrhUiJI/AAAAAAAABTY/B0ayt7T4BUoUW13Srr0EGiRQ_-jNeQJKwCLcBGAs/s1600/photo%25283%2529.jpg",
  name: "Sate Sayur Sultan",
  description: "Sate sayur sultan menu vegetarian terenak di Bandung",
  ingredients: "Bawang merah, paprika, bawang bombay, timun",
  price: 50000,
  rate: 4.2,
);
