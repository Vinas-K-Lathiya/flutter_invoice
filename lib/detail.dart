import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/Data/data.dart';



class Detail extends StatefulWidget {
  Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Map<String,dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    return Scaffold(
      floatingActionButton: IconButton(
        icon: Icon(Icons.abc),
        onPressed: () {
          Navigator.of(context).pushNamed('cart');
          if(!AddedProducts.contains(data)){
            AddedProducts.add(data);
          }
        },
      ),
    );
  }
}
