import 'package:core/core.dart';

part 'place_category_entity.freezed.dart';
part 'place_category_entity.g.dart';

enum PlaceStatusFilterEnum { open, openingSoon, closed }

extension PlaceStatusFilterEnumX on PlaceStatusFilterEnum {
  String get label {
    switch (this) {
      case PlaceStatusFilterEnum.open:
        return 'Đang mở cửa';
      case PlaceStatusFilterEnum.openingSoon:
        return 'Sắp mở cửa';
      case PlaceStatusFilterEnum.closed:
        return 'Đã đóng cửa';
    }
  }
}

@freezed
abstract class PlaceCategory with _$PlaceCategory {
  const factory PlaceCategory({
    required String id,
    required PlaceCategoryEnum name,
    String? icon,
  }) = _PlaceCategory;

  factory PlaceCategory.fromJson(Map<String, dynamic> json) =>
      _$PlaceCategoryFromJson(json);
}
