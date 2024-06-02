import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({super.key});

  //final int x=10;
  //stless will give error without final* cause then it will be mutable

  //to change x:
  int x=10;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('COUNTER PROVIDER') ,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                x.toString(), style: TextStyle(fontSize: 40),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

//in stateless: the widgets built at first wont change and remain the same even if value inside changes
//it will represent the same what it showed at first till last

//had it been stateful, the value changing would have been showed through setstate function
//set state rebuilds full view
// set state disadv: has to reset whole screen (all widgets) for one change


// to manage states of something like time (each second refresh required to present clock time),
// then we cant refresh each second -> low performance
// solution : STATE MANAGEMENT
