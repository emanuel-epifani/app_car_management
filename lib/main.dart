import 'package:car_management/screens/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //--------------con CUBIT----------------
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider<ShopItemsListCubit>(
    //       create: (context) => ShopItemsListCubit(),
    //     ),
    //     BlocProvider<HomePageCubit>(
    //       create: (context) => HomePageCubit(),
    //     ),
    //   ],
    //   child: const MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       title: 'Flutter Demo',
    //       theme: ThemeData(primarySwatch: Colors.blue),
    //       home: const HomePage(),
    //     );

    //--------------senza CUBIT-----------------
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowMaterialGrid: false,
      home: const HomePage(),
    );
  }
}
