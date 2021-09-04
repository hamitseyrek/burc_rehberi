import 'package:burc_rehberi/burc_details.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc atBurc;
  const BurcItem({ required this.atBurc, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5, 
      child: ListTile(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetail(selectedBurc: atBurc)));
        },
        title: Text(atBurc.burcName),
        leading: CircleAvatar(child: Image.asset('assets/images/${atBurc.burcThumb}')),
        subtitle: Text(atBurc.burcDate),
        trailing: Icon(Icons.arrow_forward, color: Colors.blue,),
        ),
      
    );
  }
}