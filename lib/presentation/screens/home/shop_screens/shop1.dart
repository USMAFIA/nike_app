import 'package:flutter/material.dart';

class Shop1 extends StatelessWidget {
  const Shop1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const <Widget>[
          Expanded(child: Text('Shop',style: TextStyle(fontSize: 30),)),
          Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(Icons.search_sharp,size: 40,),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: CircularProgressIndicator(),),
          ],
        ),
      ),
    );
  }
}
