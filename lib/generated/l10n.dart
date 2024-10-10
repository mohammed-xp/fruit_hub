// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to`
  String get helloIn {
    return Intl.message(
      'Welcome to',
      name: 'helloIn',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get fruit {
    return Intl.message(
      'Fruit',
      name: 'fruit',
      desc: '',
      args: [],
    );
  }

  /// `HUB`
  String get hub {
    return Intl.message(
      'HUB',
      name: 'hub',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and high quality.`
  String get onBoardingSubTitle1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and high quality.',
      name: 'onBoardingSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get searchAndShop {
    return Intl.message(
      'Search and Shop',
      name: 'searchAndShop',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the best carefully selected fruits. Check out the details, photos, and reviews to ensure you choose the perfect fruit.`
  String get onBoardingSubTitle2 {
    return Intl.message(
      'We offer you the best carefully selected fruits. Check out the details, photos, and reviews to ensure you choose the perfect fruit.',
      name: 'onBoardingSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get startNow {
    return Intl.message(
      'Start Now',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don''t have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get newAccount {
    return Intl.message(
      'New Account',
      name: 'newAccount',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get byCreateingAccount {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'byCreateingAccount',
      desc: '',
      args: [],
    );
  }

  /// `our Terms & Conditions`
  String get ourTermsAndConditions {
    return Intl.message(
      'our Terms & Conditions',
      name: 'ourTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Create a new account`
  String get createANewAccount {
    return Intl.message(
      'Create a new account',
      name: 'createANewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get thisFieldIsRequired {
    return Intl.message(
      'This field is required',
      name: 'thisFieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions must be agreed to`
  String get termsAndConditionsIsRequired {
    return Intl.message(
      'Terms and Conditions must be agreed to',
      name: 'termsAndConditionsIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred. Please try again`
  String get anErrorOccurred {
    return Intl.message(
      'An error occurred. Please try again',
      name: 'anErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Signup Success, Please Login`
  String get SignupSuccessPleaseLogin {
    return Intl.message(
      'Signup Success, Please Login',
      name: 'SignupSuccessPleaseLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login Successfully`
  String get loginSuccessfully {
    return Intl.message(
      'Login Successfully',
      name: 'loginSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning!..`
  String get goodMorning {
    return Intl.message(
      'Good Morning!..',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `Search for...`
  String get searchFor {
    return Intl.message(
      'Search for...',
      name: 'searchFor',
      desc: '',
      args: [],
    );
  }

  /// `Shop now`
  String get shopNow {
    return Intl.message(
      'Shop now',
      name: 'shopNow',
      desc: '',
      args: [],
    );
  }

  /// `Best Seller`
  String get bestSeller {
    return Intl.message(
      'Best Seller',
      name: 'bestSeller',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Shopping Cart`
  String get shoppingCart {
    return Intl.message(
      'Shopping Cart',
      name: 'shoppingCart',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
