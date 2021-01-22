part of 'models.dart';

class Food extends Equatable {
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

  @override
  List<Object> get props => [id,picturePath,name,description,ingredients,price,rate];
}

List<Food> mockFoods = [
  Food(
  id: 1,
  picturePath:
      "https://2.bp.blogspot.com/-LQIhtDtiOH0/Wv4CdrhUiJI/AAAAAAAABTY/B0ayt7T4BUoUW13Srr0EGiRQ_-jNeQJKwCLcBGAs/s1600/photo%25283%2529.jpg",
  name: "Sate Sayur Sultan",
  description: "Sate sayur sultan menu vegetarian terenak di Bandung",
  ingredients: "Bawang merah, paprika, bawang bombay, timun",
  price: 50000,
  rate: 4.2,
),
Food(
  id: 2,
  picturePath:
      "https://2.bp.blogspot.com/-LQIhtDtiOH0/Wv4CdrhUiJI/AAAAAAAABTY/B0ayt7T4BUoUW13Srr0EGiRQ_-jNeQJKwCLcBGAs/s1600/photo%25283%2529.jpg",
  name: "Sate Sayur Asem",
  description: "Sate sayur sultan menu vegetarian terenak di Bandung",
  ingredients: "Bawang merah, paprika, bawang bombay, timun",
  price: 45000,
  rate: 4.0,
),
Food(
  id: 3,
  picturePath:
      "https://2.bp.blogspot.com/-LQIhtDtiOH0/Wv4CdrhUiJI/AAAAAAAABTY/B0ayt7T4BUoUW13Srr0EGiRQ_-jNeQJKwCLcBGAs/s1600/photo%25283%2529.jpg",
  name: "Sate Sayur Lodeh",
  description: "Sate sayur sultan menu vegetarian terenak di Bandung",
  ingredients: "Bawang merah, paprika, bawang bombay, timun",
  price: 55000,
  rate: 4.5,
),
Food(
  id: 4,
  picturePath:
      "https://2.bp.blogspot.com/-LQIhtDtiOH0/Wv4CdrhUiJI/AAAAAAAABTY/B0ayt7T4BUoUW13Srr0EGiRQ_-jNeQJKwCLcBGAs/s1600/photo%25283%2529.jpg",
  name: "Sate Sayur Sultan",
  description: "Sate sayur sultan menu vegetarian terenak di Bandung",
  ingredients: "Bawang merah, paprika, bawang bombay, timun",
  price: 150000,
  rate: 4.2,
),
];
