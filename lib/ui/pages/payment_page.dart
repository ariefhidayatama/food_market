part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  PaymentPage({this.transaction});

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPressed: () {},
      backColor: 'FAFAFC'.toColor(),
      child: Column(children: [
        /// Bagian atas
        Container(
          margin: EdgeInsets.only(bottom: defaultMargin),
          padding:
              EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Item Ordered',
                style: blackFontStyle3,
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      transaction.food.picturePath),
                                  fit: BoxFit.cover))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 189,
                            // 2 * defaultMargin (jarak border)
                            // 60 (lebar picture) +
                            // 12 (jarak picture ke title) +
                            // 78 (lebar jumlah item),
                            child: Text(
                              transaction.food.name,
                              style: blackFontStyle2,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Text(
                              NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'IDR ',
                                decimalDigits: 0,
                              ).format(transaction.food.price),
                              style: greyFontStyle.copyWith(fontSize: 13)),
                        ],
                      )
                    ],
                  ),
                  Text(
                    '${transaction.quantity} item(s)',
                    style: greyFontStyle.copyWith(fontSize: 13),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 8),
                child: Text('Details Transaction', style: blackFontStyle3),
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child:
                            Text(transaction.food.name, style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(transaction.quantity *
                                    transaction.food.price),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ]),
              SizedBox(
                height: 6,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Driver', style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(50000),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ]),
              SizedBox(
                height: 6,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Tax 10%', style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(transaction.quantity *
                                    transaction.food.price *
                                    0.1),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ]),
              SizedBox(
                height: 6,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Total', style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(transaction.quantity *
                                        transaction.food.price *
                                        1.1 +
                                    50000),
                            style: blackFontStyle3.copyWith(
                                fontWeight: FontWeight.w500,
                                color: '1ABC9C'.toColor()),
                            textAlign: TextAlign.right)),
                  ]),
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 8),
                child: Text('Deliver To:', style: blackFontStyle3),
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Name', style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Arief Hidayat',
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ]),
              SizedBox(
                height: 6,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Phone No.', style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('0821 1652 6937',
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ]),
              SizedBox(
                height: 6,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Address', style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Kp.Cibelut, Kec. Cisauk, Kab.Tanggerang',
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ]),
              SizedBox(
                height: 6,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('House No.', style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('No C9',
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ]),
              SizedBox(
                height: 6,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('City', style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Kabupaten Tanggerang',
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ]),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 24),
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: RaisedButton(
                  onPressed: () {
                    // Get.to(AddressPage());
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: mainColor,
                  child: Text(
                    "Checkout Now",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
