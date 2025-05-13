import 'package:flutter/material.dart';
import 'anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1 )),
           elevation: 1,color: Colors.white),
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage()  ,
      bottomNavigationBar: BottomAppBar(
        child: Row(
        children: [
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.home,
             color: currentpage == 0 
             ?Color.fromRGBO(203, 73, 101, 1) 
             :Color.fromRGBO (40,40,40,1) ,
             ),
            onPressed:  () {
              setState(() {
                currentpage = 0;
              });
            },
          ),Spacer(),

           IconButton(
            icon: Icon(
              Icons.search,
              color: currentpage == 1
              ?Color.fromRGBO(203, 73, 101, 1) 
              :Color.fromRGBO (40,40,40,1) ,
              ),
            onPressed:  () {
              setState(() {
                currentpage = 1;
              });
            },
          ),Spacer(),
           IconButton(
            icon: Icon(Icons.add),
            onPressed:  () {},
          ),Spacer(),
           IconButton(
            icon: Icon(Icons.ondemand_video),
            onPressed:  () {},
          ),Spacer(),
           IconButton(
            icon: Icon(Icons.person),
            onPressed:  () {},
          ),Spacer(),
        ],
        ),
        ),
    );
  }
  
}
