import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sni_app/main.dart';
import 'package:sni_app/l10n/app_localizations.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _language = 'it';
  bool _newsNotifications = true;
  bool _alertNotifications = true;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _language = prefs.getString('language') ?? 'it';
      _newsNotifications = prefs.getBool('news_notifications') ?? true;
      _alertNotifications = prefs.getBool('alert_notifications') ?? true;
    });
  }

  Future<void> _saveLanguage(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', value);
    setState(() => _language = value);
  }

  Future<void> _saveNotification(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _sectionTitle(AppLocalizations.of(context)!.language),
          _languageSelector(),

          _sectionTitle(AppLocalizations.of(context)!.notifications),
          _notificationSwitch(
            title: AppLocalizations.of(context)!.news,
            value: _newsNotifications,
            onChanged: (val) {
              _newsNotifications = val;
              _saveNotification('news_notifications', val);
            },
          ),
          _notificationSwitch(
            title: AppLocalizations.of(context)!.importantAlerts,
            value: _alertNotifications,
            onChanged: (val) {
              _alertNotifications = val;
              _saveNotification('alert_notifications', val);
            },
          ),
        ],
      ),
    );
  }

  Widget _languageSelector() {
    return ListTile(
      title: Text(AppLocalizations.of(context)!.selectLanguage),
      trailing: DropdownButton<String>(
        value: _language,
        items: [
          DropdownMenuItem(value: 'it', child: Text(AppLocalizations.of(context)!.italian)),
          DropdownMenuItem(value: 'en', child: Text(AppLocalizations.of(context)!.english)),
        ],
        onChanged: (value) {
          if (value != null) {
            _saveLanguage(value);
            SNIApp.setLocale(context, Locale(value));
          }
        },
      ),
    );
  }

  Widget _notificationSwitch({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: onChanged,
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
