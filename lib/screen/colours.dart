import 'package:counter_provider/provider/colours_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColoursMain extends StatefulWidget {
  const ColoursMain({super.key});

  @override
  State<ColoursMain> createState() => _ColoursMainState();
}

class _ColoursMainState extends State<ColoursMain> {
  // double value = 1.0;
  @override
  Widget build(BuildContext context) {
    //final provider = Provider.of<ColoursProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Colours'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Consumer<ColoursProvider>(builder: (context, value, child){
            return
              Slider(
                  min: 0,
                  max: 1,
                  value: value.value, onChanged: (val){
                value.setValue(val);
              });
          }),
//value is the value given at that position
          Consumer<ColoursProvider>(builder: (context, value, child){
            return
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent.withOpacity(value.value),
                      ),
                      child: Center(
                        child: Text('Container 1'),
                      ),
                    ),
                  ),
                  Expanded(child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(value.value),
                    ),
                    child: Center(
                      child: Text('Container 2'),
                    ),
                  ),)
                ],
              );
          }),
        ],
      ),
    );
  }
}
