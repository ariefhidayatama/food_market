part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(children: [
          // Header
          Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Food Market',
                            style: blackFontStyle1,
                          ),
                          Text(
                            "Let's get some foods",
                            style: greyFontStyle.copyWith(
                                fontWeight: FontWeight.w300),
                          ),
                        ]),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://akcdn.detik.net.id/community/media/visual/2020/05/20/85bb6a5f-a309-4ab9-aebb-61f652ce7e8a_43.jpeg?w=700&q=80'),
                                  fit: BoxFit.cover
                            )))
                  ]))
          // List of Food
          // List of Food (Tabs)
        ])
      ],
    );
  }
}
