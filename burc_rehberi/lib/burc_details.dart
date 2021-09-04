import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcDetail extends StatelessWidget {
  final Burc selectedBurc;
  const BurcDetail({ required this.selectedBurc, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        SliverAppBar(
          expandedHeight: 250,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(          title: Text(selectedBurc.burcName),
background: Image.asset('assets/images/'+selectedBurc.burcImage,fit: BoxFit.cover,),
        ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              ListTile(title: Text(selectedBurc.burcDate, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),),
              Card(
                child: ListTile(subtitle: Text(selectedBurc.burcDetails),),
              )
            ],
          ),
        )
      ],
      ),
    );
  }
}