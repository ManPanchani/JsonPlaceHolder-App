import 'dart:convert';
import 'package:http/http.dart' as http;
import '../globals/global.dart';
import '../models/api_models.dart';

class ApiHelpers {
  ApiHelpers._();

  static final ApiHelpers apiHelpers = ApiHelpers._();

  String baseURI = "https://jsonplaceholder.typicode.com";

  Future<List<JsonPlaceHolder>?> getData() async {
    String api = baseURI + Global.endpoint;
    http.Response data = await http.get(Uri.parse(api));

    if (data.statusCode == 200) {
      List decodeData = jsonDecode(data.body);
      List<JsonPlaceHolder> allData =
          decodeData.map((e) => JsonPlaceHolder.fromMap(data: e)).toList();
      return allData;
    }
    return null;
  }
}
