import 'package:flutter/material.dart';

main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal ListView"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                  child: Card(
                      color: Colors.blue,
                      child: Container(
                          child:
                              Center(child: Text(numbers[index].toString())))));
            }),
      ),
    );
  }
}
