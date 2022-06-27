import 'package:equatable/equatable.dart';
import 'package:travelapp/model/data_model.dart';


abstract class CubitStates extends Equatable{

}

class InitialState extends CubitStates {

  @override
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {

  @override
  List<Object> get props => [];
}

class LodingState extends CubitStates {

  @override
  List<Object> get props => [];
}

class LodedState extends CubitStates {
  LodedState(this.places);
  final List<DataModel> places;

  @override
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  DetailState(this.places);
  final DataModel places;

  @override
  List<Object> get props => [places];
}