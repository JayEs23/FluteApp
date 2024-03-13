import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';

class Services {
  // String baseurl = 'http://192.168.137.178:3000/v1';
  // String baseurl = 'http://192.168.43.26:3000/v1';
  // String baseurl = 'http://10.10.200.195:3000/v1';
  // String baseurl = 'http://192.168.137.163:3000/v1';
  // String baseurl = 'http://172.20.10.6:3000/v1';

  String baseurl = 'https://otuevbo.onrender.com/v1';

  get(String path) async {
    try {
      final response = await http.get(Uri.parse(this.baseurl + path));
      if (response.statusCode >= 200 && response.statusCode < 400) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('An error occurred: $error');
    }
  }

  post(String path, dynamic body, token) async {
    var authHeaders = {"Content-Type": "application/json"};
    try {
      var response = await http.post(Uri.parse(this.baseurl + path),
          body: jsonEncode(body), // Used jsonEncode instead of jsonDecode
          headers: token.isEmpty
              ? authHeaders
              : {...authHeaders, "Authorization": "Bearer $token"});

      if (response.statusCode >= 200 && response.statusCode < 400) {
        return {"error": "", ...jsonDecode(response.body)};
      } else {
        var error_response = jsonDecode(response.body);
        return {"error": error_response["msg"]};
      }
    } catch (error) {
      print(error);
      throw Exception('An error occurred: $error');
    }
  }
}
