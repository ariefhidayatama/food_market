part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
  id: 1,
  name: 'Arief Hidayat',
  email: 'kickerif.20@gmail.com',
  address: 'Jalan Jayakarta',
  houseNumber: 'No 43',
  phoneNumber: '085723213672',
  city: 'Jakarta',
  picturePath: 'https://d10dnch8g6iuzs.cloudfront.net/pictures/480x306/picture/9452020081415451575'
);