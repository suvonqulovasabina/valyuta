 import 'package:valyuta/damin/sors/remote/request/var.dart';

abstract class ApiServis{
  Future<List<CurrencyModel>> getCurrency();


  Future<List<CurrencyModel>> getCurrencyMy(String day);


}