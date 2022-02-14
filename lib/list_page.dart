import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localstorage/localstorage.dart';
import 'package:project_one_bloc/bloc/produit_bloc.dart';
import 'package:project_one_bloc/produit_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'addprod.dart';







class list_page extends StatefulWidget {
  const list_page({ Key? key }) : super(key: key);

  @override
  _list_pageState createState() => _list_pageState();
}

class _list_pageState extends State<list_page> {



 
  



  @override
  Widget build(BuildContext context) {


      //void addproduitinfo( produit pro){
    //setState(() {
     // userlist.add(pro);
   // });
  //}

   




  

        void Ajouter_product(){
      showDialog(context: context, builder: (_){ 
      return AlertDialog(
        content: addprod(),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      );
    });
    }
        return SafeArea(child: 
    Scaffold(
      backgroundColor: Colors.yellow[50],
      
      
      floatingActionButton: ElevatedButton(
        
child: Text("Ajouter produit"),
        
        
        onPressed: () => Ajouter_product(),

        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange[900],
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),)
        )
      
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
    

        
      ),

      appBar: AppBar(
            
            backgroundColor: Colors.brown[400],
        title: Text("Liste des produits ",
        style: TextStyle(color: Colors.white, fontSize: 20),),
        automaticallyImplyLeading: false, 
        actions: <Widget>[
              IconButton(
                icon: Icon(Icons.exit_to_app),
                
                onPressed: (){
                  out();

                  print('out');},
               )
            ],
               
            
          ),
      
          body: SingleChildScrollView(

            child:BlocBuilder<ProduitBloc,List<ProduitState>>(
       
      builder: (context, produit) {
              return Center(
                child: Column(children: [
                 Container(
                   height: MediaQuery.of(context).size.height ,
                   child: ListView.builder(
                     itemCount: produit.length,
                     itemBuilder: (context, index){
                       return Card(
                         
                         child: ListTile(
                           onTap: () {
                          Navigator.push( context,    MaterialPageRoute(
                               builder: (BuildContext context) => 
                               
                               produit_page(produitlist: produit[index], ind: index,),
                               ),
                                    );
                                   },
                           
                           title: Text(' #  Produit : '+ (index ).toString(),
                           style: TextStyle(color: Colors.black, fontSize: 20, 
                           fontWeight: FontWeight.bold,),  ),
                          
                        
                         ),
                         );
                     },
                     
                     ),
                 )
                ],)
                );
                
      }
            ),
          )
    ),
    );
      
  
  }


Future out()=> showDialog
(context: context,

               builder: (context) => 
               AlertDialog(
                 
                 
                 title: Text("Attention !!"),
                 
                 content:
                   Container(
                     
                     
                     child:Text("              Vous voulez \n        quitter l'application ?"),
                       
                     
                   ),
                 
                
                 actions: [
                   
                   TextButton(
                     child: Text("Oui"),
                     onPressed: (){
                       SystemNavigator.pop();
                     },
                   ),
                   TextButton(
                     child: Text("Annuler"),
                     onPressed: (){
                       Navigator.of(context).pop();
                       //out().runtimeType;
                       //fermé la boitte de dialogue
                     },
                   )
                   
                 ],
               
              ),
);

}