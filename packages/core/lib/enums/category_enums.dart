import 'package:flutter/material.dart';

enum PlaceCategoryEnum {
  food,
  snack,
  coffee,
  relax,
  park,
  playground,
  fashion,
  date,
  luxury,
}

extension PlaceCategoryEnumX on PlaceCategoryEnum {
  /// Vietnamese display label (matches your source list)
  String get label {
    switch (this) {
      case PlaceCategoryEnum.food:
        return 'Đồ ăn';
      case PlaceCategoryEnum.snack:
        return 'Ăn vặt';
      case PlaceCategoryEnum.coffee:
        return 'Coffee';
      case PlaceCategoryEnum.relax:
        return 'Nghỉ ngơi';
      case PlaceCategoryEnum.park:
        return 'Công viên';
      case PlaceCategoryEnum.playground:
        return 'Khu vui chơi';
      case PlaceCategoryEnum.fashion:
        return 'Thời trang';
      case PlaceCategoryEnum.date:
        return 'Date';
      case PlaceCategoryEnum.luxury:
        return 'Luxury';
    }
  }

  /// Icon data for UI
  IconData get iconData {
    switch (this) {
      case PlaceCategoryEnum.food:
        return Icons.restaurant;
      case PlaceCategoryEnum.snack:
        return Icons.fastfood;
      case PlaceCategoryEnum.coffee:
        return Icons.local_cafe;
      case PlaceCategoryEnum.relax:
        return Icons.spa;
      case PlaceCategoryEnum.park:
        return Icons.park;
      case PlaceCategoryEnum.playground:
        return Icons.sports_esports;
      case PlaceCategoryEnum.fashion:
        return Icons.checkroom;
      case PlaceCategoryEnum.date:
        return Icons.favorite;
      case PlaceCategoryEnum.luxury:
        return Icons.diamond;
    }
  }

  /// Keywords for filtering
  List<String> get matchingKeywords {
    switch (this) {
      case PlaceCategoryEnum.food:
        return <String>[
          'food',
          'ceat',
          'eat',
          'Đồ ăn',
          'Cơm',
          'Nhà hàng',
          'Quán ăn',
        ];
      case PlaceCategoryEnum.snack:
        return <String>['snack', 'Ăn vặt', 'Bánh', 'Trà sữa'];
      case PlaceCategoryEnum.coffee:
        return <String>['coffee', 'Coffee', 'Cà phê', 'Kafe'];
      case PlaceCategoryEnum.relax:
        return <String>['relax', 'crelax', 'Nghỉ ngơi'];
      case PlaceCategoryEnum.park:
        return <String>['park', 'Công viên', 'Thảm cỏ'];
      case PlaceCategoryEnum.playground:
        return <String>[
          'playground',
          'cplay',
          'play',
          'Khu vui chơi',
          'Giải trí',
        ];
      case PlaceCategoryEnum.fashion:
        return <String>['fashion', 'Thời trang', 'Quần áo', 'Shop'];
      case PlaceCategoryEnum.date:
        return <String>['date', 'Date', 'Hẹn hò'];
      case PlaceCategoryEnum.luxury:
        return <String>[
          'luxury',
          'Luxury',
          'Sang trọng',
        ];
    }
  }
}
