import 'package:bloc/bloc.dart';
import 'package:travelapp/cubit/app_cubit_states.dart';
import 'package:travelapp/model/data_model.dart';
import 'package:travelapp/services/data_services.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData()async {
    try{
      emit(LodingState());
      places = await data.getInfo();
      emit(LodedState(places));
    }catch(e){

    }
  }
  
  detailPage(DataModel data){
    emit(DetailState(data));
  }

  goHome(){
    emit(LodedState(places));
  }
}