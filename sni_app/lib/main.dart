import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/app_theme.dart';
import 'l10n/app_localizations.dart';
import 'pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SNIApp());
}

class SNIApp extends StatefulWidget {
  const SNIApp({super.key});

  /// Call this to change the global locale from anywhere in the widget tree.
  static void setLocale(BuildContext context, Locale newLocale) {
    final _SNIAppState? state = context.findAncestorStateOfType<_SNIAppState>();
    state?.setLocale(newLocale);
  }

  @override
  State<SNIApp> createState() => _SNIAppState();
}

class _SNIAppState extends State<SNIApp> {
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    _loadLocaleFromPrefs();
  }
  Future<void> _loadLocaleFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString('language');
    if (code != null && mounted) setState(() => _locale = Locale(code));
  }

  void setLocale(Locale locale) {
    if (mounted) setState(() => _locale = locale);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      locale: _locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: const HomePage(),
    );
  }
}
