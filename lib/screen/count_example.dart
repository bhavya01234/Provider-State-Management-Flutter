import 'package:counter_provider/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    //listen false stops building of whole page
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build happeing .......');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter provider task'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: //consumer widget to prevent building of whole page
        Consumer<CountProvider>(builder: (context, value, child ){
          print('only this widget builds .........***');
          return Text(countProvider.count.toString(), style: TextStyle(fontSize: 50));
        })
        //Text(countProvider.count.toString(), style: TextStyle(fontSize: 50),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
