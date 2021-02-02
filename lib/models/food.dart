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
      "https://cdn.idntimes.com/content-images/post/20191031/ikan-bakar-28ce074a783e692115250298b315c9c4_600x400.jpg",
  name: "Ikan Bakar",
  description: "Gurame bakar yang lezat",
  ingredients: "Gurame, Bawang merah, paprika, bawang bombay, timun",
  price: 45000,
  rate: 4.0,
),
Food(
  id: 3,
  picturePath:
      "https://assets-pergikuliner.com/mmT-tHby1_aAM03MWKOnoan3YEg=/385x290/smart/https://assets-pergikuliner.com/uploads/image/picture/88017/picture-1442471751.jpg",
  name: "Steak Joni",
  description: "Daging sapi import Australia",
  ingredients: "Daging Sapi, Bawang merah, paprika, bawang bombay, timun",
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
