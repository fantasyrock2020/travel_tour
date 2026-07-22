import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shared/theme/theme.dart';

abstract class BaseStateFull<T extends StatefulWidget>
    extends BaseStateFullDelegate<T> {}

abstract class BaseStateFullDelegate<T extends StatefulWidget>
    extends State<T> {
  late ThemeCubit themeCubit;
  late LanguageCubit languageCubit;

  AppColors get appColors => themeCubit.state.colors;
  AppTextStyles get textStyles => themeCubit.state.textStyles;
  Locale get locale => languageCubit.state.locale;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    themeCubit = BlocProvider.of<ThemeCubit>(context);
    languageCubit = BlocProvider.of<LanguageCubit>(context);
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => buildPage(context);

  @protected
  Widget buildPage(BuildContext context);

  @override
  void dispose() {
    super.dispose();
  }
}
