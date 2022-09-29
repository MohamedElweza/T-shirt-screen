import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.headdata, required this.data}) : super(key: key);
final String headdata; 
final String data; 
  @override
  Widget build(BuildContext context) {
    return Row(
           children:  [
          Padding(
          padding: const EdgeInsets.all(8.0),
         child: Text(headdata,style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17,fontFamily: 'Myfont',),),
          ),
          Text(data,style: const TextStyle(color: Colors.white70, fontSize: 17,fontFamily: 'Myfont',),),
           ],
           );
  }
}