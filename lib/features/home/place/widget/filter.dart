import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/button/ripple_button.dart';

import '../../../../widget/base_state/base_state.dart';

class FilterEndDrawer extends StatefulWidget {
  const FilterEndDrawer({
    required this.onApply,
    required this.initialFilter,
    super.key,
  });

  final PlaceFilter initialFilter;
  final ValueChanged<PlaceFilter> onApply;

  @override
  State<FilterEndDrawer> createState() => _FilterEndDrawerState();
}

class _FilterEndDrawerState extends BaseStateFull<FilterEndDrawer> {
  late Set<PlaceCategoryEnum> _selectedCategories;
  late Set<String> _selectedCategoryIds;
  late Set<PlaceStatusFilterEnum> _selectedStatuses;
  late double _minDistance;
  late double _maxDistance;
  late int? _maxPriceLevel;
  late double? _minRating;
  late Set<String> _selectedTags;

  @override
  void initState() {
    super.initState();
    _resetToFilter(widget.initialFilter);
  }

  void _resetToFilter(PlaceFilter filter) {
    _selectedCategories = <PlaceCategoryEnum>{...filter.categories};
    _selectedCategoryIds = <String>{...filter.categoryIds};
    _selectedStatuses = <PlaceStatusFilterEnum>{...filter.statuses};
    _minDistance = filter.minDistanceKm ?? 0.0;
    _maxDistance = filter.maxDistanceKm ?? 50.0;
    _maxPriceLevel = filter.maxPriceLevel;
    _minRating = filter.minRating;
    _selectedTags = <String>{...filter.tags};
  }

  PlaceFilter get _currentFilter => PlaceFilter(
    categories: _selectedCategories,
    categoryIds: _selectedCategoryIds,
    statuses: _selectedStatuses,
    minDistanceKm: _minDistance > 0 ? _minDistance : null,
    maxDistanceKm: _maxDistance < 50 ? _maxDistance : null,
    maxPriceLevel: _maxPriceLevel,
    minRating: _minRating,
    tags: _selectedTags,
  );

  void _onClear() {
    setState(() => _resetToFilter(PlaceFilter.empty()));
  }

  void _onApply() {
    widget.onApply(_currentFilter);
    _onClose();
  }

  void _onClose() {
    Navigator.of(context).pop();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.85,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
              child: Row(
                children: <Widget>[
                  Text('Bộ lọc', style: textStyles.headlineSmall),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: _onClose,
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: <Widget>[
                  _Section(
                    text: 'Danh mục địa điểm',
                    child: _buildCategoryEnumChips(),
                  ),
                  _Section(
                    text: 'Trạng thái hoạt động',
                    child: _buildStatusChips(),
                  ),
                  _Section(
                    text: 'Khoảng cách (km)',
                    child: _buildDistanceRangeSelector(),
                  ),
                  _Section(text: 'Mức giá', child: _buildPriceLevelSelector()),
                ],
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                spacing: 16,
                children: <Widget>[
                  Expanded(
                    child: RippleButton(
                      text: 'Xoá bộ lọc',
                      enabledColor: appColors.secondary,
                      onPressed: _onClear,
                    ),
                  ),
                  Expanded(
                    child: RippleButton(text: 'Áp dụng', onPressed: _onApply),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryEnumChips() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: PlaceCategoryEnum.values.map((PlaceCategoryEnum cat) {
        final bool selected = _selectedCategories.contains(cat);
        return InkWell(
          borderRadius: .circular(6),
          onTap: () {
            setState(() {
              if (!selected) {
                _selectedCategories.add(cat);
              } else {
                _selectedCategories.remove(cat);
              }
            });
          },
          child: Ink(
            padding: const .symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: selected ? appColors.primary : appColors.surface,
              border: Border.all(color: appColors.primary),
              borderRadius: .circular(6),
            ),
            child: Row(
              spacing: 6,
              mainAxisSize: .min,
              children: <Widget>[
                Icon(
                  cat.iconData,
                  size: 18,
                  color: selected ? appColors.surface : appColors.textColor,
                ),
                Text(
                  cat.label,
                  style: TextStyle(
                    color: selected ? appColors.surface : appColors.textColor,
                    fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildStatusChips() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: PlaceStatusFilterEnum.values.map((
        PlaceStatusFilterEnum status,
      ) {
        final bool selected = _selectedStatuses.contains(status);
        final IconData icon = switch (status) {
          PlaceStatusFilterEnum.open => Icons.storefront,
          PlaceStatusFilterEnum.openingSoon => Icons.access_time,
          PlaceStatusFilterEnum.closed => Icons.no_meeting_room_outlined,
        };

        return InkWell(
          borderRadius: .circular(6),
          onTap: () {
            setState(() {
              if (!selected) {
                _selectedStatuses.add(status);
              } else {
                _selectedStatuses.remove(status);
              }
            });
          },
          child: Ink(
            padding: const .symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: selected ? appColors.primary : appColors.surface,
              border: Border.all(color: appColors.primary),
              borderRadius: .circular(6),
            ),
            child: Row(
              spacing: 6,
              mainAxisSize: .min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 18,
                  color: selected ? appColors.surface : appColors.textColor,
                ),
                Text(
                  status.label,
                  style: TextStyle(
                    color: selected ? appColors.surface : appColors.textColor,
                    fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDistanceRangeSelector() {
    final String rangeText = _maxDistance >= 50
        ? '${_minDistance.toInt()} km - 50+ km'
        : '${_minDistance.toInt()} km - ${_maxDistance.toInt()} km';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Bán kính tìm kiếm',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
            ),
            Text(
              rangeText,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: appColors.primary,
              ),
            ),
          ],
        ),
        RangeSlider(
          values: RangeValues(_minDistance, _maxDistance),
          max: 50.0,
          divisions: 50,
          activeColor: appColors.primary,
          labels: RangeLabels(
            '${_minDistance.toInt()} km',
            _maxDistance >= 50 ? '50+ km' : '${_maxDistance.toInt()} km',
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _minDistance = values.start;
              _maxDistance = values.end;
            });
          },
        ),
      ],
    );
  }

  Widget _buildPriceLevelSelector() {
    const Map<int, String> labels = <int, String>{
      1: r'$',
      2: r'$$',
      3: r'$$$',
      4: r'$$$$',
    };
    return Row(
      children: <Widget>[
        Expanded(
          child: Wrap(
            spacing: 8,
            children: labels.entries.map((MapEntry<int, String> e) {
              final bool selected = _maxPriceLevel == e.key;
              return InkWell(
                borderRadius: .circular(6),
                onTap: () {
                  setState(() {
                    _maxPriceLevel = !selected ? e.key : null;
                  });
                },
                child: Ink(
                  padding: const .symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: selected ? appColors.primary : appColors.surface,
                    border: Border.all(color: appColors.primary),
                    borderRadius: .circular(6),
                  ),
                  child: Text(
                    e.value,
                    style: TextStyle(
                      color: selected ? appColors.surface : appColors.textColor,
                      fontWeight: selected
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class _Section extends BaseStateLess {
  const _Section({required this.text, required this.child});

  final String text;
  final Widget child;

  @override
  Widget buildPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: <Widget>[
          Text(text, style: textStyles(context).titleSmall),
          child,
        ],
      ),
    );
  }
}
