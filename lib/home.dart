// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/detailsdata.dart';
import 'package:flutter_application_1/size.dart';


class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 int num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff000000),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: const [
          Icon(Icons.favorite),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left :5.0, right : 12),
            child: Icon(Icons.local_mall),
          ),
        ],
      ),
      body: 
      Container(
       color: const Color(0xff000000),
        child: Column(
        children: [
        Row(
        children: [
        Expanded(
        child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: SizedBox(
        height: 350,
        width:310 ,
        child: Carousel(
        dotSize: 6.0,
        dotSpacing: 15.0,
        dotIncreasedColor: Colors.redAccent,
        dotPosition: DotPosition.bottomCenter,
        images: [
                Image.asset('asset/image/img1.jpg', fit: BoxFit.cover),
                Image.asset('asset/image/img2.jpg', fit: BoxFit.cover),
                Image.asset('asset/image/img3.jpg', fit: BoxFit.cover),
         ],
          )           
          ),
         ),
         ),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(                      
          children: [
                SizedButton(size: ' S '),
                const SizedBox(height: 20.0,),
                SizedButton(size: ' M '),
                const SizedBox(height: 20.0,),
                SizedButton(size: ' L '),
                const SizedBox(height: 20.0,),
                SizedButton(size: 'XL'),
                const SizedBox(height: 20.0,),
                SizedButton(size: '2xl'),
            ],
            ),
            ), 
            ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    const Padding(
                      padding: EdgeInsets.only(left:20.0),
                      child: Text(
                        'Belgium EURO', 
                       style: TextStyle(
                       fontFamily: 'Myfont',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      ),),
                    ),
                     const Padding(
                       padding: EdgeInsets.only(left:20.0),
                       child: Text(
                        '20/21 Away by Adidas',
                         style:  TextStyle(
                         fontFamily: 'Myfont',
                           color: Colors.white,
                             fontSize: 20,
                  ),
                 ),
                     ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      const Icon(Icons.star, color: Color(0xffE6323E),),
                      const Icon(Icons.star, color: Color(0xffE6323E)),
                      const Icon(Icons.star, color: Color(0xffE6323E)),
                      const Icon(Icons.star, color: Color(0xffE6323E)),
                      const Icon(Icons.star, color: Color(0xff81272D),),
                      const Text(
                        '4.0',
                        style:  TextStyle(
                        fontFamily: 'Myfont',
                        color: Colors.white,
                    ),),
                      const SizedBox(width:30,),
                    Container( 
                      height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff2B2B2B),   ),  
                               child: Row(
                              children:  [
                                  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                  decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                 color: Colors.red,
                                    ), 
                             child:  IconButton(
                                onPressed: () {
                                  setState(() {
                                      num == 0 ? num =0 : num--; 
                                    });
                                },
                              color: Colors.white, 
                              icon: const Icon(Icons.remove, size: 25,),
                                       ),
                                        ),
                                     ),
       Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          num.toString(),
           style: const TextStyle(
            color: Colors.white,
             fontFamily: 'Myfont', 
             fontWeight: FontWeight.bold,
              fontSize: 20
              ),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.red   ), 
          child: IconButton(
            onPressed: () {
           setState(() {
           num++;
            });
           },
           color: Colors.white, 
            icon: const Icon(Icons.add),
             ),
        ),
      ),
    ],   ), ),
    ],
    ),
    )
     ],
     ),
     Row(
     children: [
      Padding(
       padding: const EdgeInsets.all(10.0),
       child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.start,
       children:  const [
       Padding(
       padding: EdgeInsets.all(8.0),
       child: Text(
       'Details',
       style: TextStyle(
       color: Colors.white70,
        fontFamily: 'Myfont',
        fontSize: 17
        ),),
        ),
       Details(headdata: 'Material:', data: 'Polyester'),
       Details(headdata: 'Shipping:', data: 'In 5 to 6 Days'),
       Details(headdata: 'Returns:', data: 'Within 20 Days'),
       ],
       ),
       ),
       const SizedBox(width: 5,),
       Container(  
       width: 95,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
         color:  Colors.red,   ),  
         child: Column(
         children: const [
         Padding(
         padding: EdgeInsets.only(
                  right: 8,
                  left: 8,
                  top: 25,
                  bottom: 10,
              ),
         child: Icon(Icons.local_mall_outlined, color: Colors.white,size: 35,),
             ),
          Padding(
          padding: EdgeInsets.only(
          right: 8,
          left: 8,
          bottom: 30,
          ),
          child: Text(
          '\$89',
           style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
           fontSize: 25,
           ),
           ),
           )
            ],
            ), ),
              ],
            ) 
          ],
        ),
      ),
    );
  }
}

