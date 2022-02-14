import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:project_one_bloc/bloc/produit_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'list_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
      
      
    
    );
  }
}

class splash_screen extends StatefulWidget {


  @override
  _splash_screenState createState() => _splash_screenState();

  
}

class _splash_screenState extends State<splash_screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration (milliseconds: 4000 ), () =>  Navigator.push( context,    MaterialPageRoute(
                             builder: (context) => BlocProvider(
                                    create: (context) => ProduitBloc(),
                                    child: list_page(),)
                               ),
                                  )
                                  );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.deepOrange[900],
      body: Center(
        child: 
             Container(
               padding: EdgeInsets. only(top:50, left:0, right:0, bottom:10),
               //child: Text("   Gestion \n\n       des \n\n Inventaires" ,style: TextStyle(color: Colors.white, fontSize: 60, 
               //fontWeight: FontWeight.bold,
              child: AnimatedTextKit(
                pause: Duration(milliseconds: 3000),
                  animatedTexts: [
                   TyperAnimatedText("   Gestion \n\n       des \n\n Inventaires" ,
                   textStyle: TextStyle(color: Colors.white, fontSize: 60, ))]
               //fontWeight: FontWeight.bold,)]
               
               )
             ),
             
            
          
          
             )
        
        
      ),

    );
  }
}