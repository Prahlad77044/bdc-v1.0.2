import 'package:bdc/core/app_export.dart';
import 'package:bdc/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('My Rewards'),
        elevation: 0,
      ),

      body:
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
                child:
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: double.maxFinite,
                      child: Text(''),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(130)),
                        color: Colors.red[800],
                      )
                      ,
                    ),

                Padding(
                  padding: const EdgeInsets.only(top:120,left: 35),
                  child: Container(
                    height: 150,
                    width: 320,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset:  Offset(
                            0,
                            0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.red,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 130,
                          width: double.maxFinite,
                          child: Text(''),
                          decoration: BoxDecoration(
                              color: Colors.red[900],

                              borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(250, 60),bottomLeft: Radius.elliptical(60, 90))

                          ),

                        ),

                        Container(
                        height: 110,
                        width: double.maxFinite,
                        child: Text(''),
                        decoration: BoxDecoration(
                          color: Colors.red[700],

                          borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(250, 60),bottomLeft: Radius.elliptical(50, 70))

                        ),

                      ),

                        Padding(
                        padding:  EdgeInsets.only(left: 34.0,top: 5,bottom: 5),
                        child: Text('PRAHLAD NEUPANE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),
                      ),

                        Padding(
                          padding: const EdgeInsets.all(33.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text('Blood Group',
                                      style:TextStyle(
                                          color: Colors.white,
                                          fontSize: 15
                                      )),
                                  Text('B+',
                                      style:TextStyle(
                                          color: Colors.white,
                                          fontSize: 15
                                      )),

                                ],
                              ),
                              Column(
                                children: [
                                  Text('Reward Points',
                                      style:TextStyle(
                                          color: Colors.white,
                                          fontSize: 15
                                      )),
                                  Text('20.0',
                                      style:TextStyle(
                                          color: Colors.white,
                                          fontSize: 15
                                      )),

                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                    Padding(
                      padding: EdgeInsets.only(top:300.0,left: 20,right: 20,bottom: 30),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset:  Offset(
                                0,
                                0,
                              ),
                              blurRadius: 3.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                          ],

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Redeemable products',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 5,top: 15),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.black12,
                                         offset:  Offset(
                                           0,
                                           0,
                                         ),
                                         blurRadius: 3.0,
                                         spreadRadius: 2.0,
                                       ), //BoxShadow
                                     ],

                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Column(
                                     children: [
                                       Image.asset('assets/images/mug.png',
                                         height: 60,),

                                       Text('Cup',style: TextStyle(
                                         color: Colors.red,
                                         fontWeight: FontWeight.w500
                                       ),)
                                     ],
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 25.0,right: 25),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.black12,
                                         offset:  Offset(
                                           0,
                                           0,
                                         ),
                                         blurRadius: 3.0,
                                         spreadRadius: 2.0,
                                       ), //BoxShadow
                                     ],

                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Column(
                                     children: [
                                       Image.asset('assets/images/white1.jpg',
                                         height: 60,

                                       ),

                                       Text('T-Shirt',style: TextStyle(
                                         color: Colors.red,
                                         fontWeight: FontWeight.w500
                                       ),)
                                     ],
                                   ),

                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 25.0,right: 25),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.black12,
                                         offset:  Offset(
                                           0,
                                           0,
                                         ),
                                         blurRadius: 3.0,
                                         spreadRadius: 2.0,
                                       ), //BoxShadow
                                     ],

                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Column(
                                     children: [
                                       Image.asset('assets/images/white1.jpg',
                                         height: 60,

                                       ),

                                       Text('T-Shirt',style: TextStyle(
                                         color: Colors.red,
                                         fontWeight: FontWeight.w500,
                                       ),)
                                     ],
                                   ),
                                 ),
                               ),



                             ],
                           ),

                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset:  Offset(
                                            0,
                                            0,
                                          ),
                                          blurRadius: 3.0,
                                          spreadRadius: 2.0,
                                        ), //BoxShadow
                                      ],

                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/mug.png',
                                          height: 60,),

                                        Text('Cup',style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0,right: 25),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset:  Offset(
                                            0,
                                            0,
                                          ),
                                          blurRadius: 3.0,
                                          spreadRadius: 2.0,
                                        ), //BoxShadow
                                      ],

                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/white1.jpg',
                                          height: 60,

                                        ),

                                        Text('T-Shirt',style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500
                                        ),)
                                      ],
                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0,right: 25),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset:  Offset(
                                            0,
                                            0,
                                          ),
                                          blurRadius: 3.0,
                                          spreadRadius: 2.0,
                                        ), //BoxShadow
                                      ],

                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/white1.jpg',
                                          height: 60,

                                        ),

                                        Text('T-Shirt',style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w500,
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),


                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset:  Offset(
                                            0,
                                            0,
                                          ),
                                          blurRadius: 3.0,
                                          spreadRadius: 2.0,
                                        ), //BoxShadow
                                      ],

                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/mug.png',
                                          height: 60,),

                                        Text('Cup',style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0,right: 25),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset:  Offset(
                                            0,
                                            0,
                                          ),
                                          blurRadius: 3.0,
                                          spreadRadius: 2.0,
                                        ), //BoxShadow
                                      ],

                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/white1.jpg',
                                          height: 60,

                                        ),

                                        Text('T-Shirt',style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500
                                        ),)
                                      ],
                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0,right: 25),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset:  Offset(
                                            0,
                                            0,
                                          ),
                                          blurRadius: 3.0,
                                          spreadRadius: 2.0,
                                        ), //BoxShadow
                                      ],

                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/white1.jpg',
                                          height: 60,

                                        ),

                                        Text('T-Shirt',style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w500,
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),


                              ],
                            ),

                          ],
                        ),


                      ),
                    ),


            ]),



            ));


  }
}
