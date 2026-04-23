# GoldBite Flutter App — Complete Beginner's Guide

> **Every Bite, Golden.** — A step-by-step walkthrough to build the GoldBite food delivery app from scratch using Flutter.

---

## Table of Contents

1. [What You'll Build](#1-what-youll-build)
2. [Tools & Prerequisites](#2-tools--prerequisites)
3. [Install Flutter](#3-install-flutter)
4. [Create Your Project](#4-create-your-project)
5. [Project Folder Structure](#5-project-folder-structure)
6. [Install Dependencies (pubspec.yaml)](#6-install-dependencies-pubspecyaml)
7. [Design System — Colors, Fonts & Theme](#7-design-system--colors-fonts--theme)
8. [App Entry Point (main.dart)](#8-app-entry-point-maindart)
9. [Screen 1 — Splash Screen](#9-screen-1--splash-screen)
10. [Screen 2 — Onboarding Screens](#10-screen-2--onboarding-screens)
11. [Screen 3 — Auth Screens (Sign Up & Sign In)](#11-screen-3--auth-screens-sign-up--sign-in)
12. [Screen 4 — Home Screen](#12-screen-4--home-screen)
13. [Screen 5 — Food Detail Screen](#13-screen-5--food-detail-screen)
14. [Screen 6 — Order Summary / Checkout Screen](#14-screen-6--order-summary--checkout-screen)
15. [Screen 7 — Cart Screen](#15-screen-7--cart-screen)
16. [Screen 8 — Order Placed / Confirmation Screen](#16-screen-8--order-placed--confirmation-screen)
17. [Navigation — Connecting All Screens](#17-navigation--connecting-all-screens)
18. [Adding Assets (Images)](#18-adding-assets-images)
19. [Running the App](#19-running-the-app)
20. [Common Errors & Fixes](#20-common-errors--fixes)
21. [Next Steps](#21-next-steps)

---

## 1. What You'll Build

The GoldBite app has the following screens, in this exact order:

| # | Screen | Description |
|---|--------|-------------|
| 1 | **Splash Screen** | Dark background, golden logo, "GOLDBITE", tagline, loading bar |
| 2 | **Onboarding (3 slides)** | Swipeable intro slides with food images and CTA buttons |
| 3 | **Sign Up** | Full name, email, password, confirm password form |
| 4 | **Sign In** | Email, password, Google/Apple login |
| 5 | **Home** | Location bar, search, category chips, featured items, popular nearby |
| 6 | **Food Detail** | Food image, name, price, description, macros, quantity, Add to Cart button |
| 7 | **Order Summary** | Items list, contact info, delivery address, Place Order button |
| 8 | **Cart** | Cart items, promo code, order summary totals, Proceed to Checkout |
| 9 | **Order Placed** | Confirmation tick, order ID, tracking status, Track My Order button |

---

## 2. Tools & Prerequisites

Before writing any code, install and set up these tools:

### Required Software

| Tool | Purpose | Download |
|------|---------|----------|
| **Flutter SDK** | The main framework | https://flutter.dev/docs/get-started/install |
| **Dart** | Comes bundled with Flutter | (included) |
| **VS Code** | Code editor (recommended for beginners) | https://code.visualstudio.com |
| **Android Studio** | Needed for Android emulator | https://developer.android.com/studio |
| **Git** | Version control | https://git-scm.com |

### VS Code Extensions to Install

Open VS Code → Go to Extensions (Ctrl+Shift+X) → Search and install:

- `Flutter` by Dart Code
- `Dart` by Dart Code
- `Pubspec Assist` (optional but helpful)

---

## 3. Install Flutter

### Step 3.1 — Download Flutter SDK

1. Go to https://flutter.dev/docs/get-started/install
2. Choose your operating system (Windows, macOS, or Linux)
3. Download the Flutter SDK zip file
4. Extract it to a folder like `C:\flutter` (Windows) or `~/flutter` (Mac/Linux)

### Step 3.2 — Add Flutter to PATH

**On Windows:**
1. Search for "Environment Variables" in the Start menu
2. Under "System Variables", find `Path` and click Edit
3. Click New and add `C:\flutter\bin`
4. Click OK on all dialogs

**On macOS / Linux:**
Open a terminal and add this line to your `~/.zshrc` or `~/.bashrc`:
```bash
export PATH="$PATH:$HOME/flutter/bin"
```
Then run:
```bash
source ~/.zshrc
```

### Step 3.3 — Run Flutter Doctor

Open a terminal and type:
```bash
flutter doctor
```

This checks your setup. You need to see green checkmarks next to:
- Flutter
- Android toolchain
- Android Studio

If something shows an ✗, follow the instructions Flutter doctor gives you to fix it.

### Step 3.4 — Accept Android Licenses

Run this command and type `y` to accept all licenses:
```bash
flutter doctor --android-licenses
```

---

## 4. Create Your Project

### Step 4.1 — Open a Terminal in VS Code

In VS Code: **Terminal → New Terminal**

### Step 4.2 — Navigate to Where You Want Your Project

```bash
cd Documents
```

### Step 4.3 — Create the Flutter Project

```bash
flutter create goldbite
```

This creates a folder called `goldbite` with all the starter files.

### Step 4.4 — Open the Project

```bash
cd goldbite
code .
```

This opens your project in VS Code.

---

## 5. Project Folder Structure

After creating the project, set up this folder structure inside the `lib/` directory. You'll create these folders manually or using the terminal.

```
goldbite/
├── lib/
│   ├── main.dart                    ← App entry point
│   ├── core/
│   │   ├── theme/
│   │   │   └── app_theme.dart       ← Colors, fonts, theme
│   │   └── constants/
│   │       └── app_constants.dart   ← Reusable strings/values
│   ├── screens/
│   │   ├── splash/
│   │   │   └── splash_screen.dart
│   │   ├── onboarding/
│   │   │   └── onboarding_screen.dart
│   │   ├── auth/
│   │   │   ├── signup_screen.dart
│   │   │   └── signin_screen.dart
│   │   ├── home/
│   │   │   └── home_screen.dart
│   │   ├── food_detail/
│   │   │   └── food_detail_screen.dart
│   │   ├── cart/
│   │   │   └── cart_screen.dart
│   │   ├── order_summary/
│   │   │   └── order_summary_screen.dart
│   │   └── order_placed/
│   │       └── order_placed_screen.dart
│   └── widgets/
│       ├── custom_button.dart        ← Reusable golden button
│       ├── custom_text_field.dart    ← Reusable dark text input
│       └── food_card.dart            ← Reusable food item card
├── assets/
│   ├── images/
│   │   ├── logo.png
│   │   ├── burger.png
│   │   ├── pizza.png
│   │   └── rider.png
│   └── fonts/
│       └── (font files here)
├── pubspec.yaml
└── ...
```

### Create Folders Using Terminal

```bash
mkdir -p lib/core/theme
mkdir -p lib/core/constants
mkdir -p lib/screens/splash
mkdir -p lib/screens/onboarding
mkdir -p lib/screens/auth
mkdir -p lib/screens/home
mkdir -p lib/screens/food_detail
mkdir -p lib/screens/cart
mkdir -p lib/screens/order_summary
mkdir -p lib/screens/order_placed
mkdir -p lib/widgets
mkdir -p assets/images
mkdir -p assets/fonts
```

---

## 6. Install Dependencies (pubspec.yaml)

Open `pubspec.yaml` (root of your project) and replace its `dependencies` and `flutter` sections with the following:

```yaml
name: goldbite
description: GoldBite Food Delivery App
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  # Page transitions and animations
  smooth_page_indicator: ^1.1.0

  # Google Fonts
  google_fonts: ^6.1.0

  # Lottie animations (optional, for loading animations)
  lottie: ^3.0.0

  # Icons
  cupertino_icons: ^1.0.6

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0

flutter:
  uses-material-design: true

  assets:
    - assets/images/

  fonts:
    - family: Bebas
      fonts:
        - asset: assets/fonts/BebasNeue-Regular.ttf
```

After saving, run:
```bash
flutter pub get
```

> **Note:** The `BebasNeue` font gives your app the same bold, uppercase look as the GoldBite designs. Download it free from https://fonts.google.com/specimen/Bebas+Neue and place `BebasNeue-Regular.ttf` inside `assets/fonts/`.

---

## 7. Design System — Colors, Fonts & Theme

Create the file `lib/core/theme/app_theme.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ──────────────────────────────────────────
// GOLDBITE COLOR PALETTE
// ──────────────────────────────────────────
class AppColors {
  // Primary golden yellow
  static const Color gold = Color(0xFFF5A623);
  static const Color goldDark = Color(0xFFD4850A);

  // Backgrounds
  static const Color backgroundDark = Color(0xFF1A1A1A);
  static const Color backgroundCard = Color(0xFF242424);
  static const Color backgroundInput = Color(0xFF2C2C2C);

  // Text
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFF9E9E9E);
  static const Color textLight = Color(0xFFE0E0E0);

  // Borders
  static const Color border = Color(0xFF3A3A3A);

  // Status
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFE53935);
}

// ──────────────────────────────────────────
// GOLDBITE THEME
// ──────────────────────────────────────────
class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      primaryColor: AppColors.gold,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.gold,
        secondary: AppColors.goldDark,
        surface: AppColors.backgroundCard,
      ),
      textTheme: GoogleFonts.outfitTextTheme(
        const TextTheme(
          displayLarge: TextStyle(
            color: AppColors.textWhite,
            fontSize: 32,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.5,
          ),
          headlineMedium: TextStyle(
            color: AppColors.textWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            color: AppColors.textWhite,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            color: AppColors.textLight,
            fontSize: 15,
          ),
          bodyMedium: TextStyle(
            color: AppColors.textGrey,
            fontSize: 13,
          ),
          labelLarge: TextStyle(
            color: AppColors.backgroundDark,
            fontSize: 14,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.2,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.gold,
          foregroundColor: AppColors.backgroundDark,
          minimumSize: const Size(double.infinity, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.5,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.backgroundInput,
        hintStyle: const TextStyle(color: AppColors.textGrey, fontSize: 14),
        labelStyle: const TextStyle(
          color: AppColors.textGrey,
          fontSize: 11,
          letterSpacing: 1.2,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.gold, width: 1.5),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.backgroundDark,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.gold,
          fontSize: 16,
          fontWeight: FontWeight.w800,
          letterSpacing: 2,
        ),
        iconTheme: IconThemeData(color: AppColors.textWhite),
      ),
    );
  }
}
```

---

## 8. App Entry Point (main.dart)

Replace everything in `lib/main.dart` with:

```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Force portrait mode only (like a mobile food app)
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Make status bar transparent so the dark splash looks correct
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(const GoldBiteApp());
}

class GoldBiteApp extends StatelessWidget {
  const GoldBiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoldBite',
      debugShowCheckedModeBanner: false, // Removes the red DEBUG banner
      theme: AppTheme.darkTheme,
      home: const SplashScreen(), // First screen shown
    );
  }
}
```

---

## 9. Screen 1 — Splash Screen

Create `lib/screens/splash/splash_screen.dart`:

```dart
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Logo and text fades in
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
      ),
    );

    // Progress bar fills up
    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 1.0, curve: Curves.easeInOut),
      ),
    );

    _controller.forward();

    // Navigate to onboarding after 3.5 seconds
    Future.delayed(const Duration(milliseconds: 3500), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const OnboardingScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Dark background with a subtle golden glow in the center
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 0.8,
            colors: [
              Color(0xFF3D2800), // Dark golden center glow
              Color(0xFF1A1A1A), // Near-black edges
              Color(0xFF0D0D0D), // True dark at the very edge
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: Stack(
          children: [
            // ── Center: Logo + Brand Name ──────────────────────────
            Center(
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // App Icon (the "G" logo box)
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C2C2C),
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.gold.withOpacity(0.4),
                            blurRadius: 40,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'G',
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: 64,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 28),

                    // Brand Name "GOLDBITE"
                    const Text(
                      'GOLDBITE',
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 42,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 6,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Tagline
                    const Text(
                      'EVERY BITE, GOLDEN.',
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ── Bottom: Progress Bar + Labels ───────────────────────
            Positioned(
              bottom: 60,
              left: 32,
              right: 32,
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Column(
                  children: [
                    // Progress bar
                    AnimatedBuilder(
                      animation: _progressAnimation,
                      builder: (context, child) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: _progressAnimation.value,
                            backgroundColor: const Color(0xFF3A3A3A),
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              AppColors.gold,
                            ),
                            minHeight: 3,
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 12),

                    // Labels below the bar
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'INITIALIZING...',
                          style: TextStyle(
                            color: AppColors.textGrey,
                            fontSize: 11,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          'EST. 2S',
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: 11,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## 10. Screen 2 — Onboarding Screens

Create `lib/screens/onboarding/onboarding_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/theme/app_theme.dart';
import '../auth/signin_screen.dart';

// ─── Data model for each onboarding slide ────────────────────────────────────
class OnboardingData {
  final String title;
  final String subtitle;
  final String description;
  final String imagePath;
  final String buttonText;
  final bool isLastSlide;

  const OnboardingData({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imagePath,
    required this.buttonText,
    this.isLastSlide = false,
  });
}

// ─── Onboarding slides content ───────────────────────────────────────────────
const List<OnboardingData> onboardingSlides = [
  OnboardingData(
    title: '',
    subtitle: 'Healthy & Delicious Food',
    description:
        'Order from 75+ restaurants in your neighborhood with lightning fast delivery.',
    imagePath: 'assets/images/burger.png', // Replace with your burger image
    buttonText: 'GET STARTED',
  ),
  OnboardingData(
    title: 'Explore\n250+ Menu\nItems',
    subtitle: '',
    description:
        'Discover hand-crafted culinary experiences delivered from the city\'s most exclusive kitchens straight to your doorstep.',
    imagePath: 'assets/images/pizza.png', // Replace with your food spread image
    buttonText: 'NEXT',
  ),
  OnboardingData(
    title: '',
    subtitle: 'DELIVERED IN 30 MINUTES',
    description:
        'High-speed craft delivery for the culinary connoisseur. Speed meets excellence.',
    imagePath: 'assets/images/rider.png', // Replace with your rider image
    buttonText: 'START ORDERING →',
    isLastSlide: true,
  ),
];

// ─── Main Onboarding Screen Widget ───────────────────────────────────────────
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < onboardingSlides.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _navigateToSignIn();
    }
  }

  void _navigateToSignIn() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const SignInScreen()),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ── Slides ──────────────────────────────────────────────
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingSlides.length,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemBuilder: (context, index) {
              return _buildSlide(onboardingSlides[index]);
            },
          ),

          // ── GOLDBITE header logo (top left) ─────────────────────
          const Positioned(
            top: 48,
            left: 24,
            child: Text(
              'GOLDBITE',
              style: TextStyle(
                color: AppColors.gold,
                fontSize: 16,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
              ),
            ),
          ),

          // ── SKIP button (top right, only on non-last slides) ─────
          if (_currentPage < onboardingSlides.length - 1)
            Positioned(
              top: 44,
              right: 24,
              child: TextButton(
                onPressed: _navigateToSignIn,
                child: const Text(
                  'SKIP',
                  style: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 13,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSlide(OnboardingData data) {
    final bool isSecondSlide = data.title.isNotEmpty && data.title.startsWith('Explore');
    final bool isLastSlide = data.isLastSlide;

    return Container(
      color: AppColors.backgroundDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Hero image fills the top portion ──────────────────────
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backgroundCard,
                image: DecorationImage(
                  image: AssetImage(data.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // ── Content below the image ────────────────────────────────
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Page indicator dots
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: onboardingSlides.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: AppColors.gold,
                      dotColor: Color(0xFF4A4A4A),
                      dotHeight: 6,
                      dotWidth: 20,
                      expansionFactor: 2.5,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Large title (used on slide 2)
                  if (data.title.isNotEmpty)
                    Text(
                      data.title,
                      style: const TextStyle(
                        color: AppColors.textWhite,
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                        height: 1.15,
                      ),
                    ),

                  // Subtitle (used on slide 1 and 3)
                  if (data.subtitle.isNotEmpty)
                    Text(
                      data.subtitle,
                      style: TextStyle(
                        color: isLastSlide
                            ? AppColors.gold
                            : AppColors.textWhite,
                        fontSize: isLastSlide ? 13 : 20,
                        fontWeight: isLastSlide
                            ? FontWeight.w700
                            : FontWeight.w600,
                        letterSpacing: isLastSlide ? 1.5 : 0,
                      ),
                    ),

                  const SizedBox(height: 10),

                  // Description
                  Expanded(
                    child: Text(
                      data.description,
                      style: const TextStyle(
                        color: AppColors.textGrey,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ),

                  // Statistics row (last slide only)
                  if (isLastSlide) ...[
                    const SizedBox(height: 8),
                    _buildStatsRow(),
                    const SizedBox(height: 16),
                  ],

                  // CTA Button
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: _goToNextPage,
                      child: Text(data.buttonText),
                    ),
                  ),

                  // "Skip for now" link on first slide
                  if (!isLastSlide && !isSecondSlide) ...[
                    const SizedBox(height: 12),
                    Center(
                      child: TextButton(
                        onPressed: _navigateToSignIn,
                        child: const Text(
                          'SKIP FOR NOW',
                          style: TextStyle(
                            color: AppColors.textGrey,
                            fontSize: 12,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],

                  // "Premium delivery service" label on slide 2
                  if (isSecondSlide) ...[
                    const SizedBox(height: 12),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.check_circle_outline,
                            color: AppColors.textGrey, size: 14),
                        SizedBox(width: 6),
                        Text(
                          'PREMIUM DELIVERY SERVICE',
                          style: TextStyle(
                            color: AppColors.textGrey,
                            fontSize: 11,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _statItem('250+', 'FOOD ITEMS'),
        _statItem('75+', 'RESTAURANTS', isGold: true),
        _statItem('15k+', 'CUSTOMERS'),
      ],
    );
  }

  Widget _statItem(String value, String label, {bool isGold = false}) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: isGold ? AppColors.gold : AppColors.textWhite,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.textGrey,
            fontSize: 10,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
```

---

## 11. Screen 3 — Auth Screens (Sign Up & Sign In)

### Sign In Screen

Create `lib/screens/auth/signin_screen.dart`:

```dart
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../home/home_screen.dart';
import 'signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: AppColors.textWhite),
        title: const Text('GOLDBITE'),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: AppColors.textGrey),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            // G Logo box
            Center(
              child: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: AppColors.backgroundCard,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    'G',
                    style: TextStyle(
                      color: AppColors.gold,
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Welcome back heading
            const Center(
              child: Text(
                'WELCOME BACK',
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Center(
              child: Text(
                'Experience culinary craft at the\nspeed of street culture.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 13,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 36),

            // Email field
            const Text(
              'EMAIL ADDRESS',
              style: TextStyle(
                color: AppColors.textGrey,
                fontSize: 11,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: AppColors.textWhite),
              decoration:
                  const InputDecoration(hintText: 'name@email.com'),
            ),

            const SizedBox(height: 20),

            // Password field with "FORGOT?" link
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'PASSWORD',
                  style: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 11,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                  ),
                  child: const Text(
                    'FORGOT?',
                    style: TextStyle(
                      color: AppColors.gold,
                      fontSize: 11,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              style: const TextStyle(color: AppColors.textWhite),
              decoration: InputDecoration(
                hintText: '••••••••',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.textGrey,
                    size: 20,
                  ),
                  onPressed: () =>
                      setState(() => _obscurePassword = !_obscurePassword),
                ),
              ),
            ),

            const SizedBox(height: 28),

            // Sign In button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const HomeScreen()),
                );
              },
              child: const Text('SIGN IN'),
            ),

            const SizedBox(height: 24),

            // OR divider
            const Row(
              children: [
                Expanded(child: Divider(color: AppColors.border)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'OR CONTINUE WITH',
                    style: TextStyle(color: AppColors.textGrey, fontSize: 11),
                  ),
                ),
                Expanded(child: Divider(color: AppColors.border)),
              ],
            ),

            const SizedBox(height: 20),

            // Google / Apple buttons
            Row(
              children: [
                Expanded(
                  child: _socialButton(
                    label: 'GOOGLE',
                    icon: Icons.g_mobiledata,
                    onTap: () {},
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _socialButton(
                    label: 'APPLE',
                    icon: Icons.apple,
                    onTap: () {},
                  ),
                ),
              ],
            ),

            const SizedBox(height: 28),

            // Sign Up link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: AppColors.textGrey, fontSize: 13),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SignUpScreen()),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: AppColors.gold,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _socialButton({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(10),
          color: AppColors.backgroundCard,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.textWhite, size: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: AppColors.textWhite,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

### Sign Up Screen

Create `lib/screens/auth/signup_screen.dart`:

```dart
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../home/home_screen.dart';
import 'signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirm = true;
  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: AppColors.textWhite),
        title: const Text('GOLDBITE'),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: AppColors.textGrey),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),

            // Title
            const Text(
              'CREATE\nACCOUNT',
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 36,
                fontWeight: FontWeight.w900,
                height: 1.1,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Join the elite circle of culinary explorers.',
              style: TextStyle(color: AppColors.textGrey, fontSize: 13),
            ),

            const SizedBox(height: 28),

            // Full Name
            _fieldLabel('FULL NAME'),
            const SizedBox(height: 8),
            TextField(
              controller: _nameController,
              style: const TextStyle(color: AppColors.textWhite),
              decoration: const InputDecoration(hintText: 'John Doe'),
            ),

            const SizedBox(height: 16),

            // Email
            _fieldLabel('EMAIL ADDRESS'),
            const SizedBox(height: 8),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: AppColors.textWhite),
              decoration:
                  const InputDecoration(hintText: 'name@email.com'),
            ),

            const SizedBox(height: 16),

            // Password
            _fieldLabel('PASSWORD'),
            const SizedBox(height: 8),
            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              style: const TextStyle(color: AppColors.textWhite),
              decoration: InputDecoration(
                hintText: '••••••••',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.textGrey,
                    size: 20,
                  ),
                  onPressed: () =>
                      setState(() => _obscurePassword = !_obscurePassword),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Confirm Password
            _fieldLabel('CONFIRM PASSWORD'),
            const SizedBox(height: 8),
            TextField(
              controller: _confirmPasswordController,
              obscureText: _obscureConfirm,
              style: const TextStyle(color: AppColors.textWhite),
              decoration: InputDecoration(
                hintText: '••••••••',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureConfirm
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.textGrey,
                    size: 20,
                  ),
                  onPressed: () =>
                      setState(() => _obscureConfirm = !_obscureConfirm),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Terms checkbox
            Row(
              children: [
                Checkbox(
                  value: _agreeToTerms,
                  onChanged: (value) =>
                      setState(() => _agreeToTerms = value ?? false),
                  activeColor: AppColors.gold,
                  side: const BorderSide(color: AppColors.border),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          color: AppColors.textGrey, fontSize: 12),
                      children: [
                        TextSpan(text: 'I agree to the '),
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                              color: AppColors.gold,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: AppColors.gold,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: '.'),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Create Account button
            ElevatedButton(
              onPressed: _agreeToTerms
                  ? () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const HomeScreen()),
                      );
                    }
                  : null,
              child: const Text('CREATE ACCOUNT'),
            ),

            const SizedBox(height: 24),

            // OR divider
            const Row(
              children: [
                Expanded(child: Divider(color: AppColors.border)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'OR CONTINUE WITH',
                    style: TextStyle(color: AppColors.textGrey, fontSize: 11),
                  ),
                ),
                Expanded(child: Divider(color: AppColors.border)),
              ],
            ),

            const SizedBox(height: 20),

            // Google / Apple
            Row(
              children: [
                Expanded(
                  child: _socialButton(
                    label: 'GOOGLE',
                    icon: Icons.g_mobiledata,
                    onTap: () {},
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _socialButton(
                    label: 'APPLE',
                    icon: Icons.apple,
                    onTap: () {},
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Already have account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: TextStyle(color: AppColors.textGrey, fontSize: 13),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: AppColors.gold,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _fieldLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.textGrey,
        fontSize: 11,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _socialButton({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(10),
          color: AppColors.backgroundCard,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.textWhite, size: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: AppColors.textWhite,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## 12. Screen 4 — Home Screen

Create `lib/screens/home/home_screen.dart`:

```dart
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../food_detail/food_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedCategory = 0;
  int _selectedNavIndex = 0;

  final List<String> categories = ['BURGERS', 'PIZZA', 'SUSHI', 'CHICKEN', 'PASTA'];

  final List<Map<String, dynamic>> featuredItems = [
    {
      'name': 'Golden Crunch Burger',
      'price': '\$18.00',
      'oldPrice': '\$24.50',
      'tag': 'PREMIUM',
      'image': 'assets/images/burger.png',
    },
    {
      'name': 'Pizza Margherita',
      'price': '\$14.00',
      'oldPrice': null,
      'tag': null,
      'image': 'assets/images/pizza.png',
    },
  ];

  final List<Map<String, dynamic>> popularItems = [
    {
      'name': 'Chicken Zinger',
      'restaurant': 'Spicy Fillet • Coleslaw • Brioche',
      'price': '\$13.50',
      'rating': '4.8',
      'image': 'assets/images/burger.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // ── Top bar: Location + Icons ─────────────────────────
            SliverToBoxAdapter(child: _buildTopBar()),

            // ── Search bar ────────────────────────────────────────
            SliverToBoxAdapter(child: _buildSearchBar()),

            // ── Category chips ────────────────────────────────────
            SliverToBoxAdapter(child: _buildCategoryChips()),

            // ── Hero / Banner card ────────────────────────────────
            SliverToBoxAdapter(child: _buildHeroBanner()),

            // ── "Featured Items" header + grid ────────────────────
            SliverToBoxAdapter(
              child: _buildSectionHeader('FEATURED ITEMS', 'VIEW ALL'),
            ),
            SliverToBoxAdapter(child: _buildFeaturedItems()),

            // ── "Popular Nearby" header + list ───────────────────
            SliverToBoxAdapter(
              child: _buildSectionHeader('POPULAR NEARBY', ''),
            ),
            SliverToBoxAdapter(child: _buildPopularItems()),

            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Row(
        children: [
          // Location
          const Icon(Icons.location_on, color: AppColors.gold, size: 18),
          const SizedBox(width: 4),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DELIVER TO',
                style: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 10,
                  letterSpacing: 1,
                ),
              ),
              Text(
                'Ikeja, Lagos',
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Spacer(),
          // Cart icon
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_bag_outlined,
                    color: AppColors.textWhite),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: AppColors.gold,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          // Profile icon
          Container(
            width: 36,
            height: 36,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.backgroundCard,
            ),
            child: const Icon(Icons.person_outline,
                color: AppColors.textGrey, size: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search GoldBite Grocs...',
                prefixIcon: const Icon(Icons.search,
                    color: AppColors.textGrey, size: 20),
                fillColor: AppColors.backgroundCard,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          const SizedBox(width: 10),
          // Filter button
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: AppColors.gold,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.tune, color: Colors.black, size: 22),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChips() {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isSelected = _selectedCategory == index;
          return GestureDetector(
            onTap: () => setState(() => _selectedCategory = index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.gold : AppColors.backgroundCard,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: isSelected
                        ? AppColors.backgroundDark
                        : AppColors.textGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeroBanner() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FoodDetailScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(16),
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.backgroundCard,
          image: const DecorationImage(
            image: AssetImage('assets/images/burger.png'),
            fit: BoxFit.cover,
            alignment: Alignment.centerRight,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Golden Crunch\nBurger',
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 20,
                fontWeight: FontWeight.w900,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text(
                  '\$18.00',
                  style: TextStyle(
                    color: AppColors.gold,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  '\$24.50',
                  style: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
              decoration: BoxDecoration(
                color: AppColors.gold,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'ORDER NOW',
                style: TextStyle(
                  color: AppColors.backgroundDark,
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, String action) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 16,
            decoration: BoxDecoration(
              color: AppColors.gold,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.textWhite,
              fontSize: 14,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const Spacer(),
          if (action.isNotEmpty)
            Text(
              action,
              style: const TextStyle(
                color: AppColors.gold,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildFeaturedItems() {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16),
        itemCount: featuredItems.length,
        itemBuilder: (context, index) {
          final item = featuredItems[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const FoodDetailScreen()),
            ),
            child: Container(
              width: 140,
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: AppColors.backgroundCard,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // Image
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(14),
                            ),
                            image: DecorationImage(
                              image: AssetImage(item['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      // Info
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['name'],
                              style: const TextStyle(
                                color: AppColors.textWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item['price'],
                              style: const TextStyle(
                                color: AppColors.gold,
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Premium tag
                  if (item['tag'] != null)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 3),
                        decoration: BoxDecoration(
                          color: AppColors.gold,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          item['tag'],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPopularItems() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: popularItems.length,
      itemBuilder: (context, index) {
        final item = popularItems[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const FoodDetailScreen()),
          ),
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.backgroundCard,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                // Food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    item['image'],
                    width: 72,
                    height: 72,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                // Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name'],
                        style: const TextStyle(
                          color: AppColors.textWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item['restaurant'],
                        style: const TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 11,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item['price'],
                        style: const TextStyle(
                          color: AppColors.gold,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                // Rating badge
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundDark,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star,
                          color: AppColors.gold, size: 12),
                      const SizedBox(width: 4),
                      Text(
                        item['rating'],
                        style: const TextStyle(
                          color: AppColors.textWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomNav() {
    final items = [
      {'icon': Icons.home_outlined, 'label': 'HOME'},
      {'icon': Icons.search, 'label': 'SEARCH'},
      {'icon': Icons.shopping_cart_outlined, 'label': 'CART'},
      {'icon': Icons.person_outline, 'label': 'PROFILE'},
    ];

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.backgroundCard,
        border: Border(top: BorderSide(color: AppColors.border)),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: List.generate(items.length, (index) {
            final isSelected = _selectedNavIndex == index;
            return Expanded(
              child: GestureDetector(
                onTap: () => setState(() => _selectedNavIndex = index),
                child: Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        items[index]['icon'] as IconData,
                        color: isSelected
                            ? AppColors.gold
                            : AppColors.textGrey,
                        size: 22,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        items[index]['label'] as String,
                        style: TextStyle(
                          color: isSelected
                              ? AppColors.gold
                              : AppColors.textGrey,
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
```

---

## 13. Screen 5 — Food Detail Screen

Create `lib/screens/food_detail/food_detail_screen.dart`:

```dart
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../order_summary/order_summary_screen.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen({super.key});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  int _quantity = 1;
  final double _basePrice = 1.20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ── Scrollable Content ─────────────────────────────────
          CustomScrollView(
            slivers: [
              // Hero image with back/cart buttons
              SliverAppBar(
                expandedHeight: 280,
                pinned: true,
                backgroundColor: AppColors.backgroundDark,
                leading: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: AppColors.backgroundCard,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_back,
                        color: AppColors.textWhite, size: 20),
                  ),
                ),
                actions: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: AppColors.backgroundCard,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.shopping_bag_outlined,
                          color: AppColors.textWhite, size: 20),
                      onPressed: () {},
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: AppColors.backgroundCard,
                    child: Image.asset(
                      'assets/images/burger.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // Content
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Restaurant tag
                      const Text(
                        'GOLDBITE KITCHEN',
                        style: TextStyle(
                          color: AppColors.gold,
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2,
                        ),
                      ),

                      const SizedBox(height: 8),

                      // Name + price row
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                            child: Text(
                              'CHICKEN\nBURGER',
                              style: TextStyle(
                                color: AppColors.textWhite,
                                fontSize: 32,
                                fontWeight: FontWeight.w900,
                                height: 1.1,
                              ),
                            ),
                          ),
                          Text(
                            '\$${_basePrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: AppColors.gold,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      // Rating + time row
                      Row(
                        children: [
                          const Icon(Icons.star,
                              color: AppColors.gold, size: 14),
                          const SizedBox(width: 4),
                          const Text(
                            '4.9',
                            style: TextStyle(
                                color: AppColors.gold, fontSize: 13),
                          ),
                          const SizedBox(width: 12),
                          const Icon(Icons.access_time,
                              color: AppColors.textGrey, size: 14),
                          const SizedBox(width: 4),
                          const Text(
                            '15-20 MIN',
                            style: TextStyle(
                                color: AppColors.textGrey, fontSize: 12),
                          ),
                          const SizedBox(width: 12),
                          const Icon(Icons.local_fire_department,
                              color: AppColors.textGrey, size: 14),
                          const SizedBox(width: 4),
                          const Text(
                            '450 KCAL',
                            style: TextStyle(
                                color: AppColors.textGrey, fontSize: 12),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Description
                      const Text(
                        'Experience the architectural masterpiece of our signature street-inspired chicken burger. Triple-breaded buttermilk thigh, layered with molten-aged cheddar, charred jalapeños, and our secret 24K gold-hued honey-habanero glaze. Served on a toasted artisanal charcoal brioche.',
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 13,
                          height: 1.65,
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Macros row
                      Row(
                        children: [
                          _macroItem('PROTEIN', '30g'),
                          const SizedBox(width: 24),
                          _macroItem('FAT', '16g'),
                        ],
                      ),

                      const SizedBox(height: 28),

                      // Quantity selector
                      Row(
                        children: [
                          const Text(
                            'QUANTITY',
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: 12,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const Spacer(),
                          _quantityButton(
                            icon: Icons.remove,
                            onTap: () {
                              if (_quantity > 1) {
                                setState(() => _quantity--);
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '$_quantity',
                              style: const TextStyle(
                                color: AppColors.textWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          _quantityButton(
                            icon: Icons.add,
                            onTap: () => setState(() => _quantity++),
                          ),
                        ],
                      ),

                      // Spacer for bottom button
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ── Sticky bottom: Add to Cart button ─────────────────
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
              decoration: BoxDecoration(
                color: AppColors.backgroundDark,
                border: const Border(
                  top: BorderSide(color: AppColors.border),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const OrderSummaryScreen()),
                  );
                },
                child: Text(
                  'ADD TO CART — \$${(_basePrice * _quantity).toStringAsFixed(2)}',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _macroItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.textGrey,
            fontSize: 10,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            color: AppColors.textWhite,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _quantityButton(
      {required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: AppColors.backgroundCard,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.border),
        ),
        child: Icon(icon, color: AppColors.textWhite, size: 18),
      ),
    );
  }
}
```

---

## 14. Screen 6 — Order Summary / Checkout Screen

Create `lib/screens/order_summary/order_summary_screen.dart`:

```dart
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../order_placed/order_placed_screen.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textWhite),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('ORDER SUMMARY'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined,
                color: AppColors.textGrey),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── YOUR SELECTION ────────────────────────────────────
            _sectionHeader('YOUR SELECTION'),
            const SizedBox(height: 12),

            _orderItem(
              name: 'THE GOLD STANDARD',
              desc: 'Double Wagyu + Truffle',
              price: '₦41,500',
              qty: 'x1',
            ),
            const SizedBox(height: 10),
            _orderItem(
              name: 'HAND-CUT FRIES',
              desc: 'Rosemary + Sea Salt',
              price: '₦4,000',
              qty: 'x2',
            ),

            const SizedBox(height: 20),

            // ── CONTACT INFO ──────────────────────────────────────
            _sectionHeader('CONTACT INFO'),
            const SizedBox(height: 12),

            _infoField('FULL NAME'),
            const SizedBox(height: 10),
            _infoField('EMAIL ADDRESS'),
            const SizedBox(height: 10),
            _infoField('PHONE NUMBER', hint: '+234 800 100 0000'),

            const SizedBox(height: 20),

            // ── DELIVERY ADDRESS ──────────────────────────────────
            _sectionHeader('DELIVERY ADDRESS'),
            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.backgroundCard,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                children: [
                  const Icon(Icons.location_on_outlined,
                      color: AppColors.gold, size: 20),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IKEJA, LAGOS',
                          style: TextStyle(
                            color: AppColors.textWhite,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '12 Obese Street, off Obafemi Awolowo Way',
                          style: TextStyle(
                            color: AppColors.textGrey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'CHANGE',
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ── ORDER TOTALS ──────────────────────────────────────
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.backgroundCard,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _totalRow('Subtotal', '₦18,500'),
                  const SizedBox(height: 8),
                  _totalRow('Delivery Fee', '₦1,500'),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(color: AppColors.border),
                  ),
                  _totalRow(
                    'TOTAL',
                    '₦20,000',
                    isTotal: true,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // ── PLACE ORDER BUTTON ────────────────────────────────
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const OrderPlacedScreen()),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('PLACE ORDER'),
                  SizedBox(width: 8),
                  Text('₦20,000 →',
                      style: TextStyle(fontWeight: FontWeight.w900)),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _sectionHeader(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.gold,
        fontSize: 12,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.5,
      ),
    );
  }

  Widget _orderItem({
    required String name,
    required String desc,
    required String price,
    required String qty,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.backgroundCard,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          // Placeholder item image area
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.backgroundInput,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.fastfood,
                color: AppColors.gold, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: AppColors.textWhite,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  desc,
                  style: const TextStyle(
                      color: AppColors.textGrey, fontSize: 11),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: AppColors.gold,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                qty,
                style: const TextStyle(
                    color: AppColors.textGrey, fontSize: 11),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoField(String label, {String hint = ''}) {
    return TextField(
      style: const TextStyle(color: AppColors.textWhite, fontSize: 14),
      decoration: InputDecoration(
        hintText: hint.isEmpty ? label.toLowerCase() : hint,
        labelText: label,
      ),
    );
  }

  Widget _totalRow(String label, String amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: isTotal ? AppColors.textWhite : AppColors.textGrey,
            fontSize: isTotal ? 14 : 13,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.normal,
            letterSpacing: isTotal ? 1 : 0,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            color: isTotal ? AppColors.gold : AppColors.textWhite,
            fontSize: isTotal ? 18 : 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
```

---

## 15. Screen 7 — Cart Screen

Create `lib/screens/cart/cart_screen.dart`:

```dart
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../order_summary/order_summary_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _quantity = 1;
  final _promoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textWhite),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('YOUR CART'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline, color: AppColors.error),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Cart item
                  _cartItem(),

                  const SizedBox(height: 20),

                  // Promo code row
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _promoController,
                          style: const TextStyle(color: AppColors.textWhite),
                          decoration: const InputDecoration(
                            hintText: 'PROMO CODE',
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 52),
                        ),
                        child: const Text('APPLY'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Order summary totals
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundCard,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        _summaryRow('Subtotal', '\$10.50'),
                        const SizedBox(height: 8),
                        _summaryRow('Delivery Fee', '\$0.30'),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(color: AppColors.border),
                        ),
                        _summaryRow('TOTAL', '\$15.00', isTotal: true),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Proceed to checkout sticky button
          Container(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
            decoration: const BoxDecoration(
              color: AppColors.backgroundCard,
              border: Border(top: BorderSide(color: AppColors.border)),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const OrderSummaryScreen()),
                );
              },
              child: const Text('PROCEED TO CHECKOUT'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cartItem() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.backgroundCard,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/burger.png',
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          // Info
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chicken Burger',
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'SINGLE PATTY',
                  style: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 11,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '\$10.50',
                  style: TextStyle(
                    color: AppColors.gold,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          // Quantity
          Row(
            children: [
              _qtyBtn(Icons.remove,
                  () => setState(() { if (_quantity > 1) _quantity--; })),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  '$_quantity',
                  style: const TextStyle(
                    color: AppColors.textWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              _qtyBtn(Icons.add,
                  () => setState(() => _quantity++)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _qtyBtn(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: AppColors.backgroundInput,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.border),
        ),
        child: Icon(icon, color: AppColors.textWhite, size: 14),
      ),
    );
  }

  Widget _summaryRow(String label, String amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: isTotal ? AppColors.textWhite : AppColors.textGrey,
            fontSize: isTotal ? 14 : 13,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.normal,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            color: isTotal ? AppColors.gold : AppColors.textWhite,
            fontSize: isTotal ? 18 : 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
```

---

## 16. Screen 8 — Order Placed / Confirmation Screen

Create `lib/screens/order_placed/order_placed_screen.dart`:

```dart
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../home/home_screen.dart';

class OrderPlacedScreen extends StatelessWidget {
  const OrderPlacedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // ── Golden checkmark ────────────────────────────────
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: AppColors.gold,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.gold.withOpacity(0.4),
                      blurRadius: 30,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const Icon(Icons.check,
                    color: Colors.black, size: 40),
              ),

              const SizedBox(height: 28),

              // ── Order Placed! Heading ───────────────────────────
              const Text(
                'ORDER PLACED!',
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Your golden meal is being prepared...',
                style: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 32),

              // ── Order tracking card ─────────────────────────────
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.backgroundCard,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Order number + ETA row
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ORDER #GB-6629',
                              style: TextStyle(
                                color: AppColors.textGrey,
                                fontSize: 11,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Text(
                              'Tracking Status',
                              style: TextStyle(
                                color: AppColors.textWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppColors.gold.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: AppColors.gold.withOpacity(0.4)),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                'ETA',
                                style: TextStyle(
                                    color: AppColors.gold,
                                    fontSize: 10,
                                    letterSpacing: 1),
                              ),
                              Text(
                                '24 MIN',
                                style: TextStyle(
                                  color: AppColors.gold,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Status steps
                    _statusStep(
                      icon: Icons.check_circle,
                      label: 'PLACED',
                      subLabel: '12:43 PM • Confirmed',
                      isCompleted: true,
                      isActive: false,
                    ),
                    _statusConnector(isCompleted: true),
                    _statusStep(
                      icon: Icons.restaurant,
                      label: 'PREPARING',
                      subLabel: 'Restaurant is cooking',
                      isCompleted: false,
                      isActive: true,
                    ),
                    _statusConnector(isCompleted: false),
                    _statusStep(
                      icon: Icons.delivery_dining,
                      label: 'DELIVERY',
                      subLabel: 'Waiting for pickup',
                      isCompleted: false,
                      isActive: false,
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // ── Track My Order button ──────────────────────────
              ElevatedButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('TRACK MY ORDER'),
                    SizedBox(width: 8),
                    Icon(Icons.navigation, size: 18),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Back to Home button
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                    (route) => false,
                  );
                },
                child: const Text(
                  'BACK TO HOME',
                  style: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 13,
                    letterSpacing: 1.5,
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statusStep({
    required IconData icon,
    required String label,
    required String subLabel,
    required bool isCompleted,
    required bool isActive,
  }) {
    Color iconColor = isCompleted
        ? AppColors.gold
        : isActive
            ? AppColors.gold
            : AppColors.textGrey;
    Color labelColor = isActive ? AppColors.textWhite : AppColors.textGrey;

    return Row(
      children: [
        Icon(icon, color: iconColor, size: 22),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: labelColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              ),
            ),
            Text(
              subLabel,
              style: const TextStyle(
                color: AppColors.textGrey,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _statusConnector({required bool isCompleted}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 4, bottom: 4),
      child: Container(
        width: 2,
        height: 24,
        color: isCompleted ? AppColors.gold : AppColors.border,
      ),
    );
  }
}
```

---

## 17. Navigation — Connecting All Screens

The navigation flow is already built into each screen in the code above. Here is a summary of how each screen connects to the next:

```
SplashScreen
    └── (after 3.5s) → OnboardingScreen
            └── GET STARTED / NEXT / START ORDERING → SignInScreen
                    ├── SIGN IN button → HomeScreen
                    └── Sign Up link → SignUpScreen
                            └── CREATE ACCOUNT → HomeScreen

HomeScreen
    └── food card tap → FoodDetailScreen
            └── ADD TO CART → OrderSummaryScreen
                    └── PLACE ORDER → OrderPlacedScreen
                            └── BACK TO HOME → HomeScreen (clears stack)
```

All navigation in this app uses `Navigator.push()` to go forward and `Navigator.pop()` to go back. The only exceptions are:
- `Navigator.pushReplacement()` used on Splash → Onboarding (so users can't go back to splash)
- `Navigator.pushAndRemoveUntil()` used on Order Placed → Home (clears the order stack)

---

## 18. Adding Assets (Images)

You need placeholder images for the app to run. Here are your options:

### Option A — Use Free Food Images (Recommended)

Download these free images from Unsplash (https://unsplash.com) and place them in `assets/images/`:
- Search "burger" → save as `burger.png`
- Search "pizza" → save as `pizza.png`
- Search "delivery rider" → save as `rider.png`

### Option B — Use a Placeholder Color Box (Quickest)

If you don't have images yet, replace every `Image.asset(...)` in your code with:

```dart
Container(
  color: AppColors.backgroundCard,
  child: const Center(
    child: Icon(Icons.fastfood, color: AppColors.gold, size: 40),
  ),
)
```

### Register Assets in pubspec.yaml

Make sure your `pubspec.yaml` already has this (from Step 6):
```yaml
flutter:
  assets:
    - assets/images/
```

Then run:
```bash
flutter pub get
```

---

## 19. Running the App

### Step 19.1 — Start an Emulator

Open Android Studio → **Virtual Device Manager** → Click the **Play** button next to your device.

Or in VS Code, press `F1` → type **Flutter: Launch Emulator** → choose your device.

### Step 19.2 — Run the App

In VS Code terminal:
```bash
flutter run
```

Or press **F5** in VS Code.

### Step 19.3 — Hot Reload

While the app is running, any time you save a file, press **r** in the terminal to hot reload. This updates the UI instantly without restarting the app.

Press **R** (capital R) for a full hot restart.

### Step 19.4 — Running on a Real Android Phone

1. On your Android phone: go to **Settings → About Phone** → tap **Build Number** 7 times to enable Developer Options
2. Go to **Settings → Developer Options** → turn on **USB Debugging**
3. Connect your phone via USB
4. Run `flutter devices` to confirm your phone is listed
5. Run `flutter run`

---

## 20. Common Errors & Fixes

| Error | Cause | Fix |
|-------|-------|-----|
| `Asset not found: assets/images/burger.png` | Image file missing or wrong name | Check the file exists in `assets/images/` with the exact filename |
| `Could not find package 'smooth_page_indicator'` | Packages not installed | Run `flutter pub get` |
| `Target of URI doesn't exist` | Wrong import path | Double check the file path in your `import` statement |
| `A non-null value must be returned` | Missing return in widget | Make sure your build method always returns a widget |
| `RenderFlex overflowed` | Content too tall/wide for its container | Wrap with `SingleChildScrollView` or use `Flexible` / `Expanded` |
| Black screen on startup | main.dart not pointing to SplashScreen | Check `home: const SplashScreen()` in `main.dart` |
| `Null check operator used on null value` | Accessing a nullable variable | Add a null check: `variable ?? defaultValue` |
| Fonts not showing | Font file not in `assets/fonts/` or not in `pubspec.yaml` | Check both the file exists and pubspec.yaml references it |

---

## 21. Next Steps

Once your app is running and looking good, here are logical next improvements:

### Immediate Polish
- Replace the placeholder "G" logo with an actual SVG or PNG logo asset
- Add real food images for every menu item
- Add smooth page transitions between screens using custom `PageRouteBuilder`

### Add State Management
As your app grows, managing state (like cart items) between screens gets complex. Learn **Provider** or **Riverpod** — these are the most beginner-friendly state management solutions for Flutter.

```bash
flutter pub add provider
```

### Make It Interactive
- Store cart items in a list and display real totals in Cart and Order Summary
- Add form validation (check email format, password length) before navigating

### Add a Backend
To make orders real, you can connect to **Firebase** (Google's free backend for apps):
- `firebase_auth` for real login
- `cloud_firestore` for storing orders and menu items

### Build for Release
When you're ready to show your app to others:
```bash
# Build an APK for Android
flutter build apk --release

# The APK is at: build/app/outputs/flutter-apk/app-release.apk
```

---

> **You've got this.** Every Flutter expert started exactly where you are now. The GoldBite design is premium and ambitious — building it will teach you more Flutter in two weeks than any course could in two months. Take it one screen at a time, run the app after every change, and Google every error you see. The Flutter community is one of the best in mobile development.
>
> **Every bite, golden. Every line of code, yours.**
