import 'package:crafton/modules/user/products/single_product_screen.dart';
import 'package:flutter/material.dart';

class AllProductWidget extends StatelessWidget {
  AllProductWidget({super.key});
  final highlightList = [
    'https://images.herzindagi.info/image/2022/Jan/craft-item-you-can-make-with-paper-plate.jpg'
    ,'https://5.imimg.com/data5/SELLER/Default/2022/3/GX/KZ/NO/143524742/new-product-500x500.jpeg'
    ,'https://5.imimg.com/data5/SELLER/Default/2022/6/QU/JJ/BC/138070366/new-product-500x500.jpeg'


  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: highlightList.length,
        itemBuilder: (context, index) => Card(

          child: SizedBox(
            width: 160,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SingleProduct(),));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                          
                            highlightList[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                 Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                         onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SingleProduct(),));
                        },
                        child: Text(
                          'Product name',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),

                      Text(
                        '170 OMA',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10,),


                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.red.shade700,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))),
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  child: const Text(
                    'ADD TO CART',
                    style:  TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),
                  ),

                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
