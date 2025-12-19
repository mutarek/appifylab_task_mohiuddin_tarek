import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = FutureProvider<SharedPreferences>((ref) async {
  return await SharedPreferences.getInstance();
});

final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>((ref) {
  return DarkModeNotifier(ref);
});

class DarkModeNotifier extends StateNotifier<bool> {
  static const String _darkModeKey = 'isDarkMode';
  final Ref ref;

  DarkModeNotifier(this.ref) : super(false) {
    _loadDarkModePreference();
  }

  Future<void> _loadDarkModePreference() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final isDarkMode = prefs.getBool(_darkModeKey) ?? false;
      state = isDarkMode;
    } catch (e) {
      debugPrint('Error loading dark mode preference: $e');
      state = false;
    }
  }

  Future<void> toggleDarkMode() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final newState = !state;
      await prefs.setBool(_darkModeKey, newState);
      state = newState;
    } catch (e) {
      debugPrint('Error saving dark mode preference: $e');
    }
  }

  Future<void> setDarkMode(bool isDark) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_darkModeKey, isDark);
      state = isDark;
    } catch (e) {
      debugPrint('Error saving dark mode preference: $e');
    }
  }
}

