import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/burc.dart';

class BurcDetail extends StatefulWidget {
  final Burc selectedBurc;
  const BurcDetail({required this.selectedBurc, Key? key}) : super(key: key);

  @override
  _BurcDetailState createState() => _BurcDetailState();
}

class _BurcDetailState extends State<BurcDetail> {
  Color colorOfAppbar = Colors.teal;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => findAppColor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: colorOfAppbar,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.selectedBurc.burcName),
              background: Image.asset(
                'assets/images/' + widget.selectedBurc.burcImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    widget.selectedBurc.burcDate,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Card(
                  child: ListTile(
                    subtitle: Text(widget.selectedBurc.burcDetails),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void findAppColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('assets/images/' + widget.selectedBurc.burcImage));
    setState(() {
      colorOfAppbar = _generator.dominantColor!.color;
    });
  }
}
