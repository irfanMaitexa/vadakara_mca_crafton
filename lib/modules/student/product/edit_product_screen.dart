import 'package:crafton/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  const EditProduct({super.key});

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imageController = TextEditingController();
  final _quantityController = TextEditingController();

  String ? nameError;
  String ? priceError;
  String ? descriptionError;
  String ? imageError;
  String ? quantityError;
  
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        // leading: IconButton(onPressed: () => {}, icon: const Icon(Icons.shopping_cart)),
        title: Text('Edit Product',
            style: TextStyle(color: Colors.white, fontFamily: 'Ubuntu-Bold')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                isDark ? Icons.notifications : Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5), blurRadius: 5.0)
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 70,
                    child: Text(
                      'Edit your product',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: CustomTextField(
                      controller: _nameController,
                      hintText: 'Enter product name',
                      labelText: 'Product name',
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: CustomTextField(
                      controller: _priceController,
                      hintText: 'Enter price',
                      labelText: 'Price',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: CustomTextField(
                      controller: _descriptionController,
                      hintText: 'Enter product description',
                      labelText: 'Description',
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  //   child: CustomTextField(
                  //     controller: _imageController,
                  //     hintText: 'Upload image',
                  //     labelText: 'Product image',
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: CustomTextField(
                      controller: _quantityController,
                      hintText: 'Quantity',
                      labelText: 'Product quantity',
                    ),
                  ),
                 
                  
                  SizedBox(
                    height: 65,
                    width: 360,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade700),
                          child: Text(
                            'Update',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            _editProductHandler(context);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                 
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

void _editProductHandler(BuildContext context){
  setState(() {
    
      if (_nameController.text.isNotEmpty &&
          _priceController.text.isNotEmpty &&
          _imageController.text.isNotEmpty &&
          _quantityController.text.isNotEmpty &&
          _descriptionController.text.isNotEmpty) {
        
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('All fields are required')));
        setState(() {});
      }
    });
  }
 


}
