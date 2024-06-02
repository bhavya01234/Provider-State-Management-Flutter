import 'package:counter_provider/home.dart';
import 'package:counter_provider/provider/colours_provider.dart';
import 'package:counter_provider/provider/count_provider.dart';
import 'package:counter_provider/provider/favourite_provider.dart';
import 'package:counter_provider/screen/colours.dart';
import 'package:counter_provider/screen/count_example.dart';
import 'package:counter_provider/screen/favourite/favourite_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider(),),
        ChangeNotifierProvider(create: (_) => ColoursProvider(),),
        ChangeNotifierProvider(create: (_) => FavouriteProvider(),),
      ],

      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FavouriteScreen (),
      ),
    );


  }
}
