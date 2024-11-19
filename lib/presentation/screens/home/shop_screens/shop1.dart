import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(Icons.search_sharp,size: 40,),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shop',style: TextStyle(fontSize: 32),),
            const Center(child: CircularProgressIndicator(),),
          ],
        ),
      ),
    );
  }
}
