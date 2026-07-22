import 'dart:async';

import 'package:core/asset_generator/assets.gen.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared/loading/fancy_loading.dart';

import '../../constants/strings.dart';
import '../../routing/app_routes.dart';
import '../../widget/base_state/base_state.dart';
import 'bloc/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends BasePageState<SplashPage, SplashBloc>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    unawaited(_initData());
  }

  Future<void> _initData() async {
    _controller.forward();
    bloc.add(const SplashEvent.started());
  }

  void _goToMainScreen() {
    context.goNamed(AppRoutes.home);
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (BuildContext context, SplashState state) {
        if (state.success) {
          _goToMainScreen();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: Center(
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    MyAssets.imagesAppLogo.image(),
                    const SizedBox(height: 16),
                    Text(
                      Strings.appName,
                      style: textStyles.headlineMedium.copyWith(
                        fontWeight: .w600,
                        color: appColors.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      Strings.appHighlight,
                      style: textStyles.bodyMedium.copyWith(fontWeight: .w500),
                    ),
                    const Spacer(),
                    const FancyLoading(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
