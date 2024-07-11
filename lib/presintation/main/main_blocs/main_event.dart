part of 'main_bloc.dart';

abstract class MainEvent {

 }

 class MainLoadEvent extends MainEvent{

 }

 class MainLoadDay extends MainEvent{
 final String day;

  MainLoadDay({required this.day});

 }
