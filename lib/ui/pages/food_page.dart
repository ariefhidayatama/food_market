part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

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
                                fit: BoxFit.cover)))
                  ])),
          // List of Food
          Container(
            height: 258,
            width: double.infinity,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Row(
                children: mockFoods
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                            // kasih jarak kiri pada elemen pertama
                            left: (e == mockFoods.first) ? defaultMargin : 0,
                            right: defaultMargin,
                          ),
                          child: FoodCard(e),
                        ))
                    .toList(),
              )
            ]),
          ),
          // List of Food (Tabs)
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                CustomTabBar(
                  title: ['New Tate', 'Popular', 'Recommended'],
                  selectedIndex: selectedIndex,
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Builder(builder: (_) {
                  String body = (selectedIndex == 0)
                      ? 'New Taste Body'
                      : (selectedIndex == 1)
                          ? 'Popular Body'
                          : 'Recommended Body';
                  return Center(child: Text(body, style: blackFontStyle2));
                }),
                SizedBox(
                  height:80,
                )
              ],
            ),
          )
        ])
      ],
    );
  }
}
