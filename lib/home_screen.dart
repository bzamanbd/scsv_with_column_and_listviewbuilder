import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('appbar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: 100,
                itemBuilder: (_, index) => ListTile(
                  leading: Text(index.toString()),
                  trailing: const Icon(Icons.favorite_border),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 500,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
