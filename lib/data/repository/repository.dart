
 import 'package:dio/dio.dart';
import 'package:valyuta/damin/sors/remote/request/var.dart';
import 'package:valyuta/damin/sors/servis/api_servis_impl.dart';

 class Repository{
  final apiService=ApiServisImpl();

  Future<List<CurrencyModel>> getCurrensy(){
    try{
      final respons=apiService.getCurrency();
      return respons;
    }on DioException{
      rethrow;
    }
  }
  Future<List<CurrencyModel>> getCurrensyDay(String day){
    try{
      final respons=apiService.getCurrencyMy(day);
      return respons;
    }on DioException{
      rethrow;
    }
  }
}