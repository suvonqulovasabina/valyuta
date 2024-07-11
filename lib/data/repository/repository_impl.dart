import 'package:dio/dio.dart';
import 'package:valyuta/damin/sors/remote/request/var.dart';
import 'package:valyuta/damin/sors/servis/api_servis_impl.dart';

class RepositoryImpl {
  ApiServisImpl s= ApiServisImpl();

  Future<List<CurrencyModel>> getCurrnsy() async {
    try{
      final b= await s.getCurrency();
      return b;
    }on DioException{
      rethrow;
    }
  }


  Future<List<CurrencyModel>> getCurrensyDay(String day){
    try{
      final respons=s.getCurrencyMy(day);
      return respons;
    }on DioException{
      rethrow;
    }
  }
}
