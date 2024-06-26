import 'dart:convert';
import '4-util.dart';

// calculates total price of items for a certain user
Future<num> calculateTotal() async {
  try { 
    // get user id
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = json.decode(userData);
    String id = userDataMap['id'];

    // get orders by user id
    String userOrders = await fetchUserOrders(id);
    List<dynamic> orders = json.decode(userOrders); // get items in list

    // price items
    double totalPrice = 0;
    for (var item in orders) {
      String productName = item.toString(); 
      String productPriceData = await fetchProductPrice(productName);
      double productPrice = double.parse(productPriceData);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}