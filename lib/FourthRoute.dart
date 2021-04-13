import 'package:flutter/material.dart';

class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 100),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              Container(
                  margin: EdgeInsets.only(right: 150),
                  child: Center(
                      child: Text(
                    "My Cart",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  )))
            ],
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Frequently Bought Together',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Column(
                      children: [
                        Card(
                          elevation: 0,
                          child: Column(
                            children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset('images/marks.jpg')),
                              Text(
                                'Marks Milk..',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '৳240',
                                      style: TextStyle(
                                          color: Colors.green.shade500,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                        height: 22,
                                        width: 22,
                                        //margin: EdgeInsets.only(top: 100),
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            //color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Icon(
                                          Icons.add,
                                          size: 17,
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 60,
            width: 340,
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                //border: Border.all(),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Coupon',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 140,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.greenAccent.shade700,
                  ),
                )
              ],
            ),
          ),
          //SizedBox(height:5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(bottom: 15),
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  //border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          'Sub Total',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Text(
                          '৳100',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          'Delivery Fee',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Text(
                          '৳20',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Text(
                          '৳10',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          'Grand Total',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          '৳130',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            height: 50,
            width: 330,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FlatButton(
                onPressed: () {},
                child: Text('Checkout',style: TextStyle(color: Colors.white,fontSize: 17),),
                color: Colors.blue.shade400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
