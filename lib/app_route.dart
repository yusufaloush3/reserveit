import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/presentation/about_you_screen/about_you_screen.dart';
import 'package:reservelt/presentation/account_screen/contact_us_screen.dart';
import 'package:reservelt/presentation/account_screen/profile_screen.dart';
import 'package:reservelt/presentation/account_screen/terms_and_conditions_screen.dart';
import 'package:reservelt/presentation/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:reservelt/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:reservelt/presentation/howe_screen/trending_details_screen.dart';
import 'package:reservelt/presentation/login_screen/login_screen.dart';
import 'package:reservelt/presentation/phone_number_screen/phone_number_screen.dart';
import 'package:reservelt/presentation/placed_map_screen/placed_map_screen.dart';
import 'package:reservelt/presentation/reservation_screen/past_screen.dart';
import 'package:reservelt/presentation/reservation_screen/upcoming_screen.dart';
import 'package:reservelt/presentation/search_screen/search_list_screen/search_list_screen.dart';
import 'package:reservelt/presentation/search_screen/search_second_screen/second_search_screen.dart';
import 'package:reservelt/presentation/set_new_password/set_new_password_screen.dart';
import 'package:reservelt/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:reservelt/presentation/splash_screen/splah_screen.dart';
import 'package:reservelt/presentation/verification_code_screen/verification_code_screen.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case signupScreen:
        return MaterialPageRoute(
          builder: (_) => SignUpScreen(),
        );
      case aboutYouScreen:
        return MaterialPageRoute(
          builder: (_) => AboutYouScreen(),
        );
      case forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
        );
      case setNewPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => SetNewPasswordScreen(),
        );
      case phoneNumberScreen:
        return MaterialPageRoute(
          builder: (_) => PhoneNumberScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case verificationCodeScreen:
        return MaterialPageRoute(
          builder: (_) => VerificationCodeScreen(),
        );
      case bottomNavigations:
        return MaterialPageRoute(
          builder: (_) => BottomNavigations(),
        );
      case profileScreen:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
        );
      case contactUsScreen:
        return MaterialPageRoute(
          builder: (_) => ContactUsScreen(),
        );
      case termsAndConditionsScreen:
        return MaterialPageRoute(
          builder: (_) => TermsAndConditionsScreen(),
        );
      case upcomingScreen:
        return MaterialPageRoute(
          builder: (_) => UpcomingScreen(),
        );
      case pastScreen:
        return MaterialPageRoute(
          builder: (_) => PastScreen(),
        );
      case searchSecondScreen:
        return MaterialPageRoute(
          builder: (_) => SearchSecondScreen(),
        );
      case trendingDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => TrendingDetailsScreen(),
        );
      case searchListScreen:
        String name = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => SearchListScreen(name: name),
        );
      case placedMapScreen:
        return MaterialPageRoute(
          builder: (_) =>  PlacedMapScreen(),
        );
    }
  }
}
