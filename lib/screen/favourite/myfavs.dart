import 'package:counter_provider/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyFavScreen extends StatefulWidget {
  const MyFavScreen({super.key});

  @override
  State<MyFavScreen> createState() => _MyFavScreenState();
}

class _MyFavScreenState extends State<MyFavScreen> {
  @override
  Widget build(BuildContext context) {
     final favProvider = Provider.of<FavouriteProvider>(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite App'),
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavScreen()));
              },
              child: Icon(Icons.favorite))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favProvider.selectedItem.length,
                itemBuilder: (context, index){
                  return Consumer<FavouriteProvider>(builder: (context, value, child){
                    return ListTile(
                      onTap: (){
                        if(value.selectedItem.contains(index)){
                          value.removeItem(index);
                        }
                        else{
                          value.addItem(index);
                        }
                      },
                      title: Text('Item '+index.toString()),
                      trailing: Icon(
                          value.selectedItem.contains(index) ? Icons.favorite : Icons.favorite_border_outlined
                      ),
                    );
                  });
                }
            ),
          )
        ],
      ),
    );
  }
}








//
// import 'package:counter_provider/provider/favourite_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class MyFavScreen extends StatelessWidget {
//   const MyFavScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     print('build');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favourite App'),
//         actions: [
//           InkWell(
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavScreen()));
//             },
//             child: Icon(Icons.favorite),
//           ),
//         ],
//       ),
//       body: Consumer<FavouriteProvider>(
//         builder: (context, favProvider, child) {
//           return Column(
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: favProvider.selectedItem.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       onTap: () {
//                         if (favProvider.selectedItem.contains(index)) {
//                           favProvider.removeItem(index);
//                         } else {
//                           favProvider.addItem(index);
//                         }
//                       },
//                       title: Text('Item $index'),
//                       trailing: Icon(
//                         favProvider.selectedItem.contains(index)
//                             ? Icons.favorite
//                             : Icons.favorite_border_outlined,
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
