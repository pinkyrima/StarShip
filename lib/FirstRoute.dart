import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FirstRoute extends StatelessWidget {
  final List<String> featuredItems = [
    'images/startship.jpg',
    'images/startship.jpg',
    'images/startship.jpg',
    'images/startship.jpg',
    'images/startship.jpg',
    'images/startship.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 210.0,
                  actions: [
                    Container(
                        margin: EdgeInsets.only(right: 310),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ))
                  ],
                  /* floating: false,
                pinned: true,*/
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      'Powder Milk',
                      style: TextStyle(color: Colors.white70),
                    ),
                    background: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900.withOpacity(0.5),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        //color: Colors.grey.shade900,
                        child: Opacity(
                            opacity: 0.8,
                            child: Image.asset('images/powder.jpg'))),
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 5.0,
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(top: 10),
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.grey.shade300),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Stack(
                                      children: [
                                        Image.asset('images/startship.jpg'),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 100),
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              )),
                                        ),
                                        Positioned(
                                            bottom: 100,
                                            right: 0,
                                            child: Container(
                                              color: Colors.greenAccent.shade700,
                                              height: 30,
                                              width: 120,
                                              child: Center(
                                                  child: Text(
                                                    "Stock out",
                                                    style: TextStyle(color: Colors.white),
                                                  )),
                                            ))
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 7,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Starship Mini Pack',
                                        style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'From: ৳100',
                                        style: TextStyle(
                                            color: Colors.lightGreen.shade700,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FlatButton(
                color: Colors.blue.shade400,
                //minWidth: 200,
                height: 50,
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.error_outline,color: Colors.white,size: 20,),
                    SizedBox(width: 50,),

                    Text(
                      'View your cart',
                      style: TextStyle(color: Colors.white,fontSize: 15),
                    ),
                    SizedBox(width: 40,),
                    Text('৳98',style: TextStyle(color: Colors.white,fontSize: 15),)
                  ],
                ),

              ),
            ),
          )
        ],
      ),
    );
  }
}
