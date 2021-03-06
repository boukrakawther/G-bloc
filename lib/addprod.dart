import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:intl/intl.dart';
import 'package:project_one_bloc/bloc/produit_bloc.dart';





class addprod extends StatefulWidget {

//final Function(produit) addproduit;



 // addprod(this.addproduit,);




  @override
  _addprodState createState() => _addprodState();
}

class _addprodState extends State<addprod> {


 Future <dynamic> scan() async{
  
  

var data = await FlutterBarcodeScanner.scanBarcode('#000000', 'Cancel', true, ScanMode.BARCODE);

  return data;

}

  @override
  Widget build(BuildContext _) {

    var code;
      scan().then((value) {
           code = value;
       } );
    
       
    

    Widget buildTextfield(String hint , TextEditingController control ){
      pause : Duration(milliseconds: 1000); //
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField( 
          keyboardType: TextInputType.number,
          decoration: 
        InputDecoration(labelText: hint,

        ),
        controller: control,




        ),
      );
    }
    
    
    
    var date  = DateFormat("dd-MM-yyyy   kk:mm").format(DateTime.now());
    var quantcontroller = TextEditingController();
    



    return Container(
      padding: EdgeInsets.all(8),
      height: 150,
      width: 200,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("quantité réceptionné"),
            
            
            buildTextfield("",quantcontroller),
            
      
      
          ElevatedButton(
            
            
            onPressed: (){

               
              BlocProvider.of<ProduitBloc>(context).add(ProduitEvent.add(
                ProduitState( codebarre: code.toString() , dateheur: date.toString(), quantite: quantcontroller.text)));
              print(ProduitState);

              Navigator.of(context).pop();
            },
            
            child: Text("Enregistrer"),
            style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange[900],
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),)
        )
            
          )
      
          ],
        ),
      )
    );

  }
}