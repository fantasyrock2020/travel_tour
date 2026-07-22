import 'dart:async';

import 'package:core/asset_generator/assets.gen.dart';
import 'package:core/export_dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared/button/gesture_button.dart';
import 'package:shared/image/c_image.dart';

import '../../../routing/app_routes.dart';
import '../../../widget/base_state/base_page_state_widget.dart';
import '../place/arguments/place_argument.dart';
import 'bloc/home_bloc.dart';
import 'widget/commune.dart';

class HomeHomePage extends StatefulWidget {
  const HomeHomePage({super.key});

  @override
  State<HomeHomePage> createState() => _HomeHomePageState();
}

class _HomeHomePageState extends BasePageState<HomeHomePage, HomeHomeBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const HomeHomeEvent.started());
  }

  Future<void> _onTap(Location? location) async {
    if (location != null && location.communes.isNotEmpty) {
      return await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return CommuneBottomSheet(
            communes: location.communes,
            onTap: _onTapCommune,
          );
        },
      );
    }

    _onGoToListPlace(location);
  }

  void _onTapCommune(Location commune) {
    _onGoToListPlace(commune);
  }

  void _onGoToListPlace(Location? location) {
    unawaited(
      context.pushNamed(
        AppRoutes.place,
        queryParameters: PlaceArgument(
          locationId: location?.id,
          locationType: location?.type,
          name: location?.name,
        ).toJson(),
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chọn địa điểm')),
      body: BlocBuilder<HomeHomeBloc, HomeHomeState>(
        bloc: bloc,
        builder: (BuildContext context, HomeHomeState state) {
          return GridView.builder(
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              mainAxisExtent: 120,
            ),
            padding: const .all(16),
            itemCount: state.locations.length,
            itemBuilder: (BuildContext context, int index) {
              final Location? location = state.locations[index];
              return GestureButton(
                onTap: () => _onTap(location),
                child: ClipRRect(
                  borderRadius: .circular(6),
                  child: Stack(
                    children: <Widget>[
                      SizedBox.expand(
                        child: CImageView(
                          url: location?.image,
                          emptyWidget: MyAssets.imagesCityPlaceholder.image(
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.white,
                                Colors.black.withValues(alpha: .3),
                              ],
                              stops: const <double>[0, .6],
                              begin: .topCenter,
                              end: .bottomCenter,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const .all(10.0),
                          child: Text(
                            location?.name ?? 'Vị trí hiện tại',
                            textAlign: .center,
                            style: textStyles.headlineSmall.copyWith(
                              color: Colors.white,
                              fontWeight: .w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
