import 'dart:convert'; 
import '1-util.dart';
import 'dart:async';


Future<String> getUserId() async {
  final userData = await fetchUserData();
  final decodedData = json.decode(userData);
  return decodedData['id'];
}