part of 'produit_bloc.dart';

enum EventType { add}

@immutable
 class ProduitEvent {

  late ProduitState produit;
  late EventType eventType;

  ProduitEvent.add(ProduitState produit) {
    eventType = EventType.add;
    this.produit = produit;
  }

}
