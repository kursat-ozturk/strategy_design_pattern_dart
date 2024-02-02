class Address {
  late String contactName;
  late String addressLine1;
  late String addressLine2;
  late String city;
  late String region;
  late String country;
  late String postalCode;
}

enum ShippingOptions {
  ups,
  dhl,
  fedex,
}

class Order {
  late ShippingOptions _shippingMethod;
  late Address _destination;
  late Address _origin;

  Order(ShippingOptions shippingMethod, Address destination, Address origin) {
    _shippingMethod = shippingMethod;
    _destination = destination;
    _origin = origin;
  }

  ShippingOptions get shippingMethod {
    return _shippingMethod;
  }

  Address get origin {
    return _origin;
  }

  Address get destination {
    return _destination;
  }
}

class ShippingCostCalculatorService {
  double calculateShippingCost(Order order) {
    switch (order.shippingMethod) {
      case ShippingOptions.fedex:
        return calculateForFedex(order);

      case ShippingOptions.ups:
        return calculateForUps(order);

      case ShippingOptions.dhl:
        return calculateForDhl(order);
      
      default:
        throw Exception('Unknown carrier');
    }
  }

  double calculateForFedex (Order order) {
    return 5.15;
  }

  double calculateForUps (Order order) {
    return 6.25;
  }

  double calculateForDhl (Order order) {
    return 9.35;
  }
}
