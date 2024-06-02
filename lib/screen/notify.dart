import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
   NotifyListenerScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Stateless to Stful'),),
      body: Center(
        child:
          ValueListenableBuilder(
            // value that is changing:
            valueListenable: _counter,
            builder: (context, value, child){
              return Text(_counter.value.toString(), style: TextStyle(fontSize: 40),);
            }
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter.value++;
          print(_counter.value.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
