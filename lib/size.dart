import 'package:flutter/material.dart';

class SizedButton extends StatefulWidget {
   SizedButton({Key? key,required this.size,}) : super(key: key);
final String size;
  @override
  State<SizedButton> createState() => _SizedButtonState();
}
class _SizedButtonState extends State<SizedButton> {
Color color = const Color.fromARGB(255, 58, 58, 58);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(   
       onTap: (){
        setState(() {
        color = color == const Color.fromARGB(255, 58, 58, 58)  ?  Colors.red : Color.fromARGB(255, 58, 58, 58);
         });
         },
          child: Container(
          width: 52,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0,),
          color:  color ,
            ),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
             child: Column(
              children:  [
              Text(
              widget.size,
              style: const TextStyle(
              fontSize: 20.0,
               color: Colors.white,
               fontFamily: 'Myfont'
                ),
                ),
                ],
                 ),
                ),
               ), );
    
  }
}