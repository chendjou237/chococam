import 'package:chococam/app/router/app_router.dart';
import 'package:chococam/app/theme/app_theme.dart';
import 'package:chococam/l10n/l10n.dart';
import 'package:chococam/thememode/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AppRouter router;

  @override
  void initState() {
    router = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const theme = ChococamTheme();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: theme.toThemeData(Brightness.light),
            themeMode: state == false ? ThemeMode.light : ThemeMode.dark,
            routerConfig: router.config(),
            supportedLocales: AppLocalizations.supportedLocales,

            //   localizationsDelegates: AppLocalizations.localizationsDelegates,
            // supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}
