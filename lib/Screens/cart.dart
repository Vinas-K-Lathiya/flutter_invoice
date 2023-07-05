import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/Data/data.dart';
import 'package:flutter_application_1/Utils/model.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
     removeProduct(e) {
      setState(() {
        AddedProducts.remove(e);
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "Your Cart",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        bottomOpacity: 20,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      body: Column(
        children: AddedProducts.map((e) => Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                  leading: Image.network(e['image']),
                  title: Text(e['tital']),
                  subtitle: Text(e['price'].toString()),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          removeProduct(e);
                        });
                      },
                      icon: Icon(Icons.remove))),
            )).toList(),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            GestureDetector(
              child: Text(
                '',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
