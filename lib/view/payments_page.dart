import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  Fruit? _selectedFruit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Column(
              children: [
                SizedBox(height: 80,),
                Row(
                  children: [
                    TextButton.icon(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back,color: Colors.white,), label: Text("Back",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),))
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.8,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("Payment Method",style: TextStyle(fontSize: 18,color: Colors.black),),
                  SizedBox(height: 20,),

                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white, // Container color
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('Gpay'),
                      leading: Radio(
                        value: Fruit.apple,
                        groupValue: _selectedFruit,
                        onChanged: (Fruit? value) {
                          setState(() {
                            _selectedFruit = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white, // Container color
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('PayPal'),
                      leading: Radio(
                        value: Fruit.apple,
                        groupValue: _selectedFruit,
                        onChanged: (Fruit? value) {
                          setState(() {
                            _selectedFruit = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white, // Container color
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('PhonePe'),
                      leading: Radio(
                        value: Fruit.apple,
                        groupValue: _selectedFruit,
                        onChanged: (Fruit? value) {
                          setState(() {
                            _selectedFruit = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white, // Container color
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('Paytm'),
                      leading: Radio(
                        value: Fruit.apple,
                        groupValue: _selectedFruit,
                        onChanged: (Fruit? value) {
                          setState(() {
                            _selectedFruit = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
enum Fruit { apple, banana, cherry }
