import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bloc/produit_bloc.dart';


class produit_page extends StatelessWidget {


  const produit_page({Key? key , required this.ind ,required this.produitlist}) : super(key: key);


final  ProduitState produitlist;



final int ind;





  
  @override
  Widget build(BuildContext context) {



    
    
    return SafeArea(child: 
    Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text("Informations du produit :  " + ind.toString(),
        style: TextStyle(color: Colors.white, fontSize: 20, 
               )),
      ),
      
      body:
      Center(
        child: Container(
          
          
          

          decoration: BoxDecoration
          (
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [ BoxShadow(
              color: Colors.brown,
              spreadRadius: 20,
              blurRadius: 20,
              offset: Offset(8.0, 7.0),
              
            )],
          ), 
          
          
          margin:  EdgeInsets. only(top:0, left:0, right:0, bottom:10),
        width: 350,
        height: 500,
          child: Column(
            children: [
             Container(
               margin:  EdgeInsets. only(top:10, left:0, right:0, bottom:10),
               child: 
               Text("Référence :" ,style: TextStyle(color: Colors.black, fontSize: 30, 
               fontWeight: FontWeight.bold,
               decoration: TextDecoration.underline,
               )),
             ),
              
             Container(
               margin:  EdgeInsets. only(top:15, left:0, right:0, bottom:10),
               child: 
              // Text(prod.codebar.toString() ,style: TextStyle(color: Colors.red[900], fontSize: 30,fontWeight: FontWeight.bold, )),
               Text(produitlist.codebarre ,style: TextStyle(color: Colors.red[900], fontSize: 30,fontWeight: FontWeight.bold, )),

             ),

             Container(
               margin:  EdgeInsets. only(top:40, left:0, right:0, bottom:10),
               child: 
               Text("Date et heur :" ,style: TextStyle(color: Colors.black, fontSize: 30, 
               fontWeight: FontWeight.bold,
               decoration: TextDecoration.underline,
               )),
             ),

             Container(
               margin:  EdgeInsets. only(top:15, left:0, right:0, bottom:10),
               child: 
               Text(produitlist.dateheur ,style: TextStyle(color: Colors.red[900], fontSize: 30, 
               fontWeight: FontWeight.bold,)),
             ),

             Container(
               margin:  EdgeInsets. only(top:40, left:0, right:0, bottom:10),
               child: 
               Text("Quantité :" ,style: TextStyle(color: Colors.black, fontSize: 30,
               fontWeight: FontWeight.bold,
               decoration: TextDecoration.underline,
                )),
             ),

             Container(
               margin:  EdgeInsets. only(top:15, left:0, right:0, bottom:10),
               child: 
               Text(produitlist.quantite.toString() ,style: TextStyle(color: Colors.red[900], fontSize: 30, 
               fontWeight: FontWeight.bold,)),
             ),

             

            ],
          ),
        ),
      ),

    ),
    );
  }


}