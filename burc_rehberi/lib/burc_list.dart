import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcList extends StatelessWidget {
    late List<Burc> allBurcs;

   BurcList(){
     allBurcs = setDatas();
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Burç Listesi')),
      body: Center(
        child: ListView.builder(itemBuilder: (context,index){
          return Container(

          );
        }, itemCount: allBurcs.length,),
      ),
    );
  }

  List<Burc> setDatas() {
    List<Burc> _temp = [];
    for (var i = 0; i < 12; i++) {
      Burc addBurc = Burc(Strings.BURC_ADLARI[i],Strings.BURC_TARIHLERI[i],Strings.BURC_GENEL_OZELLIKLERI[i],Strings.BURC_ADLARI[i].toLowerCase()+'_buyuk'+(i+1).toString()+'.png',Strings.BURC_ADLARI[i].toLowerCase()+(i+1).toString()+'.png');
      _temp.add(addBurc);
    }
    return _temp;
  }
}