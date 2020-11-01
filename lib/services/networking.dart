import 'dart:convert';

import 'package:http/http.dart' as http;

class Networking {
  final String url;

  Networking(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
