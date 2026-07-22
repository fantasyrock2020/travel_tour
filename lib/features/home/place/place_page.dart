import 'package:core/export_dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../../widget/base_state/base_page_state_widget.dart';
import 'arguments/place_argument.dart';
import 'bloc/place_bloc.dart';
import 'widget/empty.dart';
import 'widget/filter.dart';
import 'widget/item.dart';

class HomePlacePage extends StatefulWidget {
  const HomePlacePage({required this.argument, super.key});

  final dynamic argument;

  @override
  State<HomePlacePage> createState() => _HomePlacePageState();
}

class _HomePlacePageState extends BasePageState<HomePlacePage, HomePlaceBloc> {
  late final PlaceArgument _argument;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _argument = PlaceArgument.fromJson(widget.argument);
    bloc.add(HomePlaceEvent.started(_argument.locationId));
  }

  Future<void> _onFilter() async {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Future<void> _onApplyFilter(PlaceFilter filter) async {
    bloc.add(HomePlaceEvent.applyFilter(filter));
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: BlocSelector<HomePlaceBloc, HomePlaceState, PlaceFilter>(
        selector: (HomePlaceState state) {
          return state.filter;
        },
        builder: (BuildContext context, PlaceFilter filter) {
          return FilterEndDrawer(
            initialFilter: filter,
            onApply: _onApplyFilter,
          );
        },
      ),
      appBar: AppBar(
        title: Text(
          _argument.name != null && _argument.name!.isNotEmpty
              ? _argument.name!
              : 'Vị trí hiện tại',
        ),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                onPressed: _onFilter,
                icon: const Icon(Icons.filter_alt_outlined),
              ),
              BlocSelector<HomePlaceBloc, HomePlaceState, bool>(
                selector: (HomePlaceState state) {
                  return state.filter.isEmpty;
                },
                builder: (BuildContext context, bool isEmpty) {
                  if (isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return Positioned(
                    top: 13,
                    right: 14,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: appColors.error,
                        shape: .circle,
                        border: .all(color: appColors.surface),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: BlocSelector<HomePlaceBloc, HomePlaceState, List<Place>>(
          selector: (HomePlaceState state) {
            return state.places;
          },
          builder: (BuildContext context, List<Place> places) {
            if (places.isEmpty) {
              return const EmptyPlaceWidget();
            }
            return ListView.builder(
              padding: const .all(16),
              itemCount: places.length,
              itemBuilder: (BuildContext context, int index) {
                final Place place = places[index];
                return PlaceItemWidget(place: place);
              },
            );
          },
        ),
      ),
    );
  }
}
