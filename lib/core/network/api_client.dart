// // api_client.dart
// import 'package:http/http.dart' as http;

// class ApiClient {
//   final String _baseUrl;

//   ApiClient(this._baseUrl);

//   Future<http.Response> get(String endpoint) async {
//     final url = Uri.parse('$_baseUrl/$endpoint');
//     return await http.get(url);
//   }
// }