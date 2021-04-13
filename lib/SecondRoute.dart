import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
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
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 90,
                  color: Colors.grey.shade50,
                  child: Row(
                    children: [
                      Image.asset('images/dano.jpeg'),
                      Expanded(
                        child: ListTile(
                          title: Text('Aria Dano Daily Pushti Powder Milk'),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Icon(
                                Icons.delete,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                'QTY: 2',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Size: 1Kg',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                '৳240',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Card(
                child: Container(
                    /*child: ListTile(
            trailing: Icon(Icons.delete),
          ),*/
                    ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Delivery Address: Home',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Bodoni Moda'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon((Icons.keyboard_arrow_down)),
                      SizedBox(
                        width: 15,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RichText(
                      text: TextSpan(
                    text:
                        'MM Enterprise, dhaka-sylhet highway,moulovibazar,Bangladesh',
                    style: TextStyle(color: Colors.black26, fontSize: 16),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Frequently Bought Together',
                        style: TextStyle(fontSize: 17),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => Container(
                      height: 150,
                      child: Image.asset('images/dano.jpeg'),
                    )),
          )
        ],
      ),
    );
  }
}
