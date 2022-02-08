import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'produit_event.dart';
part 'produit_state.dart';

class ProduitBloc extends Bloc<ProduitEvent, List<ProduitState>> {


  ProduitBloc() : super([]) {
    on<ProduitEvent>((event, emit) {

      switch (event.eventType) {
      case EventType.add:
        List<ProduitState> newState = List.from(state);
        
          newState.add(event.produit);
        
        emit (newState);
        break;
      
    
      }
  });
}}
