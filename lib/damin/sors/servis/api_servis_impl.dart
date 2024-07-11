import 'package:dio/dio.dart';
import 'package:valyuta/damin/sors/remote/request/var.dart';
import 'package:valyuta/damin/sors/servis/api_servis.dart';

class ApiServisImpl extends ApiServis{

  final _dio= Dio(BaseOptions(
    baseUrl: 'https://cbu.uz/uz/',
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    contentType:'application/json'
  ));

  @override
  Future<List<CurrencyModel>> getCurrency() async {
    try{
      final respons = await _dio.get('arkhiv-kursov-valyut/json');
      return (respons.data as List)
          .map((value)=> CurrencyModel.fromJson(value))
          .toList();
      
    }on DioException{
      rethrow;
    }
  }



  @override
  Future<List<CurrencyModel>> getCurrencyMy(String day) async {
    try{
      final respons=await _dio.get
        ("https://cbu.uz/uz/arkhiv-kursov-valyut/json/all/${day}/");
      return (respons.data as List)
          .map((value)=>CurrencyModel.fromJson(value))
          .toList();
    } on DioException{
      rethrow;
    }
  }

 

}