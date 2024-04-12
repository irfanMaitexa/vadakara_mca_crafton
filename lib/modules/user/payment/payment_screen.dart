import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        // leading: IconButton(onPressed: () => {}, icon: const Icon(Icons.shopping_cart)),
        title: Text('Payment',
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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 500,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Amount to be paid'),
            SizedBox(height: 12),
            Text(
              '₹ 5000',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Divider(endIndent: 10, indent: 10),
            SizedBox(height: 12),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  border: const OutlineInputBorder(),
                  hintText: "Enter Amount",
                  hintStyle: TextStyle(fontSize: 20),
                  prefixText: "₹",
                  prefixStyle: TextStyle(fontSize: 20)),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 15),
             Text('Payment mode',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
            Column(
              children: [
                Row(
                  children: [
                     ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/4947/4947090.png',
                        fit: BoxFit.fill,
                        height: 120,
                      ),
                    ),
                  ],
                )
              ],
              )
          ]),
        ),
      ),
    );
  }
}
