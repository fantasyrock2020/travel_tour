import 'package:core/core.dart';
import 'package:retrofit/retrofit.dart';

part 'place_api.g.dart';

@lazySingleton
@RestApi(
  baseUrl: 'https://fantasyrock2020.github.io/Place-Json/',
  headers: <String, dynamic>{'Content-Type': 'text/plain'},
)
abstract class PlaceApi {
  @factoryMethod
  factory PlaceApi(Dio dio) = _PlaceApi;

  @GET('/output.json')
  Future<dynamic> getList();
}
