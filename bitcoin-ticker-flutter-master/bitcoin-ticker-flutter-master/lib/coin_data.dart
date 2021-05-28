import 'dart:convert';
import 'package:http/http.dart';

const apikey = 'D7DBB1CD-FB61-43B9-A3DD-60713AE677B2';
String curr = 'USD';
var link = 'https://rest.coinapi.io/v1/exchangerate/BTC/$curr?apikey=$apikey';

const List<String> currenciesList = ['AUD', 'BRL', 'CAD', 'CNY', 'EUR', 'GBP', 'HKD', 'IDR', 'ILS', 'INR', 'JPY', 'MXN', 'NOK', 'NZD', 'PLN', 'RON', 'RUB', 'SEK', 'SGD', 'USD', 'ZAR'];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  String url;

  Future getCoinData(String selectedCurrency) async {
    var newURL = 'https://rest.coinapi.io/v1/exchangerate/BTC/$selectedCurrency?apikey=$apikey';
    Response response = await get(Uri.parse(newURL));

    if (response.statusCode == 200) {
      print(response.body);
      var data = jsonDecode(response.body);
      var rate = data['rate'];
      return rate;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
