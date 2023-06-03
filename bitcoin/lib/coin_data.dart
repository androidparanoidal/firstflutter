import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'E4FEC196-6CFB-480F-B380-C8A049CB15C8';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    String url = '$coinAPIURL/BTC/$selectedCurrency?apikey=$apiKey';

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var rate = data['rate'];
      return rate.toStringAsFixed(0);
    } else {
      print('ERROR');
      print(response.statusCode);
    }
  }
}
