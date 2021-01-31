part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: "You'ev Made Order",
        subtitle: "Just stay at home\npreparing your best foods",
        picturePath: 'assets/bike.png',
        buttonTitle1: 'Order Other Foods',
        buttonTap1: () {},
        buttonTap2: () {},
        buttonTitle2: 'View My Order',
      ),
    );
  }
}
