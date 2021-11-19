import 'package:clone_epigram_demo/constants.dart';
import 'package:clone_epigram_demo/elements/scroll_behaviour.dart';
import 'package:flutter/material.dart';

class CashSummaryScreen extends StatefulWidget {
  const CashSummaryScreen({Key? key}) : super(key: key);

  @override
  _CashSummaryScreenState createState() => _CashSummaryScreenState();
}

class _CashSummaryScreenState extends State<CashSummaryScreen> {
  late OverlayEntry entry;

  @override
  void initState() {
    entry = OverlayEntry(
      builder: (context) {
        return Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    entry.remove();
                  },
                  child: Text("abc"),
                ),
                RaisedButton(
                  onPressed: () {
                    entry.remove();
                  },
                  child: Text("def"),
                ),
                RaisedButton(
                  onPressed: () {
                    entry.remove();
                  },
                  child: Text("123"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CashSummaryColors.cashSummaryBackground,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 60,
                ),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Saldo disponible',
                        style: TextStyle(
                            color: CashSummaryColors.primaryTextColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Text(
                              '25.256,70€',
                              style: TextStyle(
                                color: CashSummaryColors.primaryTextColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Icon(
                            Icons.info,
                            color: CashSummaryColors.darkBlue,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 15,
                                left: 13,
                                bottom: 6,
                              ),
                              child: Text(
                                'Análisis',
                                style: TextStyle(
                                  color: CashSummaryColors.primaryTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 15,
                                left: 7,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_circle_up_outlined,
                                          color: Colors.green,
                                          size: 45.0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Ingresos',
                                                style: TextStyle(
                                                  color: CashSummaryColors
                                                      .secondaryTextColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '1.679,00€',
                                                style: TextStyle(
                                                  color: CashSummaryColors
                                                      .primaryTextColor,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_circle_down_outlined,
                                          color: Colors.red,
                                          size: 45.0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Gastos',
                                                style: TextStyle(
                                                  color: CashSummaryColors
                                                      .secondaryTextColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '-834,50€',
                                                style: TextStyle(
                                                  color: CashSummaryColors
                                                      .primaryTextColor,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 15,
                                  left: 13,
                                  bottom: 6,
                                ),
                                child: Text(
                                  'Movimientos',
                                  style: TextStyle(
                                    color: CashSummaryColors.primaryTextColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              // Compras Comercial
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 5,
                                          left: 13,
                                          bottom: 6,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Compra comercial',
                                              style: TextStyle(
                                                color: CashSummaryColors
                                                    .primaryTextColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 5),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.shopping_cart,
                                                    color: CashSummaryColors
                                                        .darkBlue,
                                                    size: 22.0,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7),
                                                    child: Text(
                                                      'Compras',
                                                      style: TextStyle(
                                                        color: CashSummaryColors
                                                            .secondaryTextColor,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: Text(
                                          '50,00€',
                                          style: TextStyle(
                                            color: CashSummaryColors
                                                .primaryTextColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              // Devolución compra
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 5,
                                          left: 13,
                                          bottom: 6,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Devolución compra',
                                              style: TextStyle(
                                                color: CashSummaryColors
                                                    .primaryTextColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                                bottom: 13,
                                              ),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .arrow_downward_outlined,
                                                    color: CashSummaryColors
                                                        .darkBlue,
                                                    size: 22.0,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7),
                                                    child: Text(
                                                      'Ingresos',
                                                      style: TextStyle(
                                                        color: CashSummaryColors
                                                            .secondaryTextColor,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: Text(
                                          '-50,00€',
                                          style: TextStyle(
                                            color: CashSummaryColors
                                                .primaryTextColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 15,
                                  left: 13,
                                  bottom: 6,
                                ),
                                child: Text(
                                  'Otras entidades',
                                  style: TextStyle(
                                    color: CashSummaryColors.primaryTextColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              // Compras Comercial
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 5,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/sabadel.png'),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 5,
                                            left: 13,
                                            bottom: 6,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Sabadell',
                                                style: TextStyle(
                                                  color: CashSummaryColors
                                                      .primaryTextColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.refresh,
                                                      color: CashSummaryColors
                                                          .darkBlue,
                                                      size: 22.0,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7),
                                                      child: Text(
                                                        'Hace 2 horas',
                                                        style: TextStyle(
                                                          color: CashSummaryColors
                                                              .secondaryTextColor,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 15),
                                          child: Text(
                                            '16.643,00€',
                                            style: TextStyle(
                                              color: CashSummaryColors
                                                  .primaryTextColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              // Devolución compra
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 5,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/ing-direct.jpeg'),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 5,
                                            left: 13,
                                            bottom: 6,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'ING Direct',
                                                style: TextStyle(
                                                  color: CashSummaryColors
                                                      .primaryTextColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.refresh,
                                                      color: CashSummaryColors
                                                          .darkBlue,
                                                      size: 22.0,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7),
                                                      child: Text(
                                                        'Hace 2 horas',
                                                        style: TextStyle(
                                                          color: CashSummaryColors
                                                              .secondaryTextColor,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 15),
                                          child: Text(
                                            '15.056,00€',
                                            style: TextStyle(
                                              color: CashSummaryColors
                                                  .primaryTextColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Icon(
                Icons.home,
                color: CashSummaryColors.darkBlue,
                size: 30.0,
              ),
            ),
            Expanded(
              flex: 2,
              child: Icon(
                Icons.list,
                color: Colors.grey,
                size: 30.0,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Icon(
                Icons.credit_card_outlined,
                color: Colors.grey,
                size: 30.0,
              ),
            ),
            Expanded(
              flex: 2,
              child: Icon(
                Icons.account_circle_outlined,
                color: Colors.grey,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          top: 28,
        ),
        child: FloatingActionButton(
          backgroundColor: CashSummaryColors.baseBlue,
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
