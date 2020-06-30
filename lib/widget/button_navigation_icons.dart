import 'package:delivery/screens/common.dart';
import 'package:delivery/widget/title.dart';
import 'package:flutter/material.dart';

class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;


  const BottomNavIcon({Key key, this.name, this.image}) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset("images/$image",height: 20,width: 20,color: red,),
          SizedBox(height: 5,),
          CustomText(text: name,)
        ],
      ),
    );
  }
}
