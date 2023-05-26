import 'package:http/http.dart' as http;
import 'dart:convert';

const APIKey = '7f3c57f0d9a7e1bb842c19930493a41b';

class NetworkHelper {
  NetworkHelper(this.url);
  final String? url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url!));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print('ERROR');
      print(response.statusCode);
    }
  }
}
