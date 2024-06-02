import 'package:counter_provider/provider/favourite_provider.dart';
import 'package:counter_provider/screen/favourite/myfavs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
   // final favProvider = Provider.of<FavouriteProvider>(context);
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
              itemCount: 100,
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
