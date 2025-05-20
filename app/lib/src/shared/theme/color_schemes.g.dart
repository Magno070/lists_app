import 'package:flutter/material.dart';
part of 'themes.dart'

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff30628c),
      surfaceTint: Color(0xff30628c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcfe5ff),
      onPrimaryContainer: Color(0xff114a73),
      secondary: Color(0xff526070),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd5e4f7),
      onSecondaryContainer: Color(0xff3a4857),
      tertiary: Color(0xff00696d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9cf1f4),
      onTertiaryContainer: Color(0xff004f52),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff42474e),
      outline: Color(0xff72777f),
      outlineVariant: Color(0xffc2c7cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff9ccbfb),
      primaryFixed: Color(0xffcfe5ff),
      onPrimaryFixed: Color(0xff001d33),
      primaryFixedDim: Color(0xff9ccbfb),
      onPrimaryFixedVariant: Color(0xff114a73),
      secondaryFixed: Color(0xffd5e4f7),
      onSecondaryFixed: Color(0xff0e1d2a),
      secondaryFixedDim: Color(0xffb9c8da),
      onSecondaryFixedVariant: Color(0xff3a4857),
      tertiaryFixed: Color(0xff9cf1f4),
      onTertiaryFixed: Color(0xff002021),
      tertiaryFixedDim: Color(0xff80d4d8),
      onTertiaryFixedVariant: Color(0xff004f52),
      surfaceDim: Color(0xffd8dae0),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffeceef4),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData _light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9ccbfb),
      surfaceTint: Color(0xff9ccbfb),
      onPrimary: Color(0xff003354),
      primaryContainer: Color(0xff114a73),
      onPrimaryContainer: Color(0xffcfe5ff),
      secondary: Color(0xffb9c8da),
      onSecondary: Color(0xff243240),
      secondaryContainer: Color(0xff3a4857),
      onSecondaryContainer: Color(0xffd5e4f7),
      tertiary: Color(0xff80d4d8),
      onTertiary: Color(0xff003739),
      tertiaryContainer: Color(0xff004f52),
      onTertiaryContainer: Color(0xff9cf1f4),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e8),
      onSurfaceVariant: Color(0xffc2c7cf),
      outline: Color(0xff8c9199),
      outlineVariant: Color(0xff42474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff30628c),
      primaryFixed: Color(0xffcfe5ff),
      onPrimaryFixed: Color(0xff001d33),
      primaryFixedDim: Color(0xff9ccbfb),
      onPrimaryFixedVariant: Color(0xff114a73),
      secondaryFixed: Color(0xffd5e4f7),
      onSecondaryFixed: Color(0xff0e1d2a),
      secondaryFixedDim: Color(0xffb9c8da),
      onSecondaryFixedVariant: Color(0xff3a4857),
      tertiaryFixed: Color(0xff9cf1f4),
      onTertiaryFixed: Color(0xff002021),
      tertiaryFixedDim: Color(0xff80d4d8),
      onTertiaryFixedVariant: Color(0xff004f52),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData _dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      titleTextStyle: textTheme.titleLarge?.copyWith(
        color: colorScheme.onPrimary,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      elevation: 2,
      shape: const StadiumBorder(),
    ),
    
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily dark;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.dark,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
