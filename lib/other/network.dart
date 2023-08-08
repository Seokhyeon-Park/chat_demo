import 'package:http/http.dart' as http;
import 'dart:convert';

// SAMPLE
// class WebtoonModel {
//   late final String title, thumb, id;

//   WebtoonModel.fromJson(Map<String, dynamic> json)
//       : title = json['title'],
//         thumb = json['thumb'],
//         id = json['id'];
// }

class Network {
  final String url;
  final String userId;
  final String userPw;
  final int userWeight;
  final String userName;

  Network(
    this.url,
    this.userId,
    this.userPw,
    this.userName,
    this.userWeight,
  );

  Future<dynamic> createAccount() async {
    final Map<String, dynamic> userData = {
      'ID': userId,
      'PW': userPw,
      'NAME': userName,
      'WEIGHT': userWeight,
    };

    final headers = {
      'Content-Type': 'application/json',
    };

    try {
      http.Response response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(userData),
      );

      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, parse the JSON data and return it.
        var parsingData = jsonDecode(response.body);
        return parsingData['result'];
      } else {
        // If the server did not return a 200 OK response, throw an error.
        throw Exception('Failed to create account');
      }
    } catch (e) {
      // If there is an error in the request, throw an exception.
      throw Exception('Failed to create account: $e');
    }
  }
}
