import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shared/theme/theme.dart';

abstract class BaseStateLess extends BaseStateLessDelegate {
  const BaseStateLess({super.key});
}

abstract class BaseStateLessDelegate extends StatelessWidget {
  const BaseStateLessDelegate({super.key});

  ThemeCubit themeCubit(BuildContext context) =>
      BlocProvider.of<ThemeCubit>(context);

  LanguageCubit languageCubit(BuildContext context) =>
      BlocProvider.of<LanguageCubit>(context);

  AppColors appColors(BuildContext context) => themeCubit(context).state.colors;

  AppTextStyles textStyles(BuildContext context) =>
      themeCubit(context).state.textStyles;

  Locale locale(BuildContext context) => languageCubit(context).state.locale;

  @override
  Widget build(BuildContext context) => buildPage(context);

  @protected
  Widget buildPage(BuildContext context);
}
