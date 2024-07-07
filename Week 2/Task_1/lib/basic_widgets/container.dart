// Container widget is a Parent widget. it contains multiple childs like Text, icon, images etc
// Parent Widgets of Container are: Scaffold, Center, Padding, Row, Column
// main properties of Container widget are; child,color,margin,padding, height & width, alignment, constraint, transform, decoration etc

import 'package:basic_widgets/basic_widgets/basic_column.dart';
import 'package:flutter/material.dart';

class BasicContainer extends StatelessWidget {
  const BasicContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.black,
        height: 200,
        width: 200,
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(20, 50, 40, 100),
        // padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        // padding: const EdgeInsets.only(top: 100, bottom: 10)

        margin: const EdgeInsets.all(30),

        // constraints: const BoxConstraints.expand(),
        constraints: const BoxConstraints(maxHeight: 100, maxWidth: 200),

        // transform: Matrix4.rotationZ(25.0),
        transform: Matrix4.skewX(15.0)..rotateZ(30.0),

        decoration: BoxDecoration(
            color: Colors.teal,
            border: Border.all(
              width: 3,
              color: Colors.red,
              style: BorderStyle.solid,
            ),

            // borderRadius: BorderRadius.all(Radius.circular(40)),
            // borderRadius: BorderRadius.circular(40),

            // borderRadius: const BorderRadius.only(
            //   topLeft: Radius.circular(50),
            //   bottomRight: Radius.elliptical(5, 7)
            // )
            
            // boxShadow:const [ 
            //   BoxShadow(blurRadius: 15.0,
            //   color: Colors.purple,
            //   spreadRadius: 20.0,
            //   offset: Offset(5.0, 5.0)
            //   )
            // ]

            // shape: BoxShape.circle,

            // gradient: const LinearGradient(
            //   begin: Alignment.centerRight,
            //   end: Alignment.centerLeft,
            //   colors: [Colors.yellow, Colors. lightGreen, Colors.pink]
            // ),
          
            // border: Border(
            //   top: BorderSide(color: Colors.red, width: 4),
            //   left: BorderSide(color: Colors.white, width: 6),
            //   right: BorderSide(color: Colors.black, width: 2),
            //   bottom: BorderSide(color: Colors.green,width: 5),
            // ),
            ),

        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ColumnBasics()));
          },
          child: const Text(
            'Column',
            style: TextStyle(fontSize: 30),
            selectionColor: Colors.amber,
          ),
        ),
      ),
    ));
  }
}
