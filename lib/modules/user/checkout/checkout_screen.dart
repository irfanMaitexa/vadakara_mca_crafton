import 'package:crafton/modules/user/checkout/order_placed_screen.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        // leading: IconButton(onPressed: () => {}, icon: const Icon(Icons.shopping_cart)),
        title: Text('CheckOut',
            style: TextStyle(color: Colors.white, fontFamily: 'Ubuntu-Bold')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        child: Column(children: [
          Expanded(
              child: ListView(children: [
            Container(
              margin: EdgeInsets.only(top:50,bottom: 4,left: 4,right: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: Colors.grey.shade200)),
                  padding: EdgeInsets.only(left: 12, top: 8, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "James Francois (Default)",
                            style: TextStyle(fontSize: 14),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 8, right: 8, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: const Color.fromARGB(255, 234, 213, 213),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Text(
                              "HOME",
                              style: TextStyle(
                                  color: Colors.indigoAccent.shade200,
                                  fontSize: 8),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "431, Commerce House, Nagindas Master, Fort",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6),
                        child: Text(
                          "Mumbai - 400023",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6),
                        child: Text(
                          "Maharashtra",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Mobile : ",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade800)),
                          TextSpan(
                              text: "02222673745",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                        ]),
                      ),
                      SizedBox(
                        height: 16,
                      ),

                      // standard Delivery

                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            border: Border.all(
                                color: Colors.tealAccent.withOpacity(0.4),
                                width: 1),
                            color: Colors.tealAccent.withOpacity(0.2)),
                        margin: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: 1,
                              onChanged: (isChecked) {},
                              activeColor: Colors.tealAccent.shade400,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Standard Delivery",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Get it by 20 jul - 27 jul | Free Delivery",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      // price section

                      Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                border:
                                    Border.all(color: Colors.grey.shade200)),
                            padding: EdgeInsets.only(
                                left: 12, top: 8, right: 12, bottom: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "PRICE DETAILS",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 0.5,
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  color: Colors.grey.shade400,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Total MRP",
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '5197',
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Bag discount",
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '3280',
                                        style: TextStyle(
                                            color: Colors.teal.shade300,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Tax",
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '96',
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Order Total",
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '2013',
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Delievery Charges",
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12),
                                      ),
                                      Text(
                                        'FREE',
                                        style: TextStyle(
                                            color: Colors.teal.shade700,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 0.5,
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  color: Colors.grey.shade400,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                    Text(
                                      '2013',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    )
                                  ],
                                ),

                                SizedBox(
                                  height: 120,
                                ),

                                //button

                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red.shade700),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPlaced(),));
                                      /*Navigator.of(context).push(new MaterialPageRoute(
                                                                  builder: (context) => OrderPlacePage()));*/
                                      // showThankYouBottomSheet(context);
                                    },
                                    child: Text(
                                      "Place Order",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]))
        ]),
      ),
    );
  }
}
