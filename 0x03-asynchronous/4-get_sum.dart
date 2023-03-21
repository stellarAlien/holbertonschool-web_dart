import 'dart:convert';
import '4-util.dart';
import 'dart:convert';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<double> calculateTotal() async {
  try {
    final userData = json.decode(await fetchUserData());
    final userId = userData['id'];

    final userOrders = json.decode(await fetchUserOrders(userId));
    final items = List<String>.from(userOrders);

    double totalPrice = .0;
    for (final item in items) {
      final price = json.decode(await fetchProductPrice(item));
      totalPrice += price;
    }

    return totalPrice;
  } catch (err) {
    print('error caught: $err');
    return -1;
  }
}