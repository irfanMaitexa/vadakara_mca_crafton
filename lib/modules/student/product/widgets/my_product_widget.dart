
import 'package:crafton/modules/student/product/edit_product_screen.dart';
import 'package:crafton/modules/student/product/my_single_product.screen.dart';
import 'package:crafton/modules/user/products/single_product_screen.dart';
import 'package:crafton/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MyProductGridWidget extends StatelessWidget {
  MyProductGridWidget({super.key});

  final productList = [
    'https://cdn.pixabay.com/photo/2017/08/03/21/11/art-2578353_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/08/03/21/11/art-2578353_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/08/03/21/11/art-2578353_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/08/03/21/11/art-2578353_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/08/03/21/11/art-2578353_1280.jpg',
   
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          childAspectRatio: .6,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          children: List.generate(
            productList.length,
            (index) => GestureDetector(
              onTap: () {},
              child: Container( 
                width: 120,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade200)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MySingleProduct(),));
                        },
                        child: Image.network(
                          productList[index],
                          fit: BoxFit.fill,
                          
                         
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'product name',
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 15),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MySingleProduct(),));
                            },
                            child: const Text(
                              'Name',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: CustomButton(
                              text: 'Edit',
                              onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditProduct(),));
                              },
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: CustomButton(
                              text: 'Delete',
                              onPressed: () {
                            
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}