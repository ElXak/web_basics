import '../data_models/routing_data.dart';

extension StringExtensions on String {
  RoutingData get getRoutingData {
    Uri uriData = Uri.parse(this);
    print(
        'queryParameters: ${uriData.queryParameters} path: ${uriData.path}'); // remove later
    return RoutingData(
      route: uriData.path,
      queryParameters: uriData.queryParameters,
    );
  }
}
