
import 'package:buyit/logic/bindings/AuthBinding.dart';
import 'package:buyit/logic/bindings/MainBinding.dart';
import 'package:buyit/logic/bindings/ProdutBinding.dart';
import 'package:buyit/view/screens/NewAddressScreen.dart';
import 'package:buyit/view/screens/PaymentScreen.dart';
import 'package:buyit/view/screens/FavoriteScreen.dart';
import 'package:buyit/view/screens/MainScreen.dart';
import 'package:buyit/view/screens/SettingsScreen.dart';
import 'package:buyit/view/screens/ShoppingCartScreen.dart';
import 'package:buyit/view/screens/SplashScreen.dart';
import 'package:buyit/view/screens/auth/LoginScreen.dart';
import 'package:buyit/view/screens/auth/ProfileScreen.dart';
import 'package:buyit/view/screens/auth/SignupScreen.dart';
import 'package:buyit/view/screens/onBoarding.dart';
import 'package:buyit/view/widgets/SideBar.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';

class AppRoutes {
  //initialRoute
  static const splash = Routes.splashScreen;
   static const mainScreen = Routes.mainScreen;

   //getPages
  static final routes = [
    GetPage(
    name: Routes.splashScreen ,
    page: () => SplashScreen()),

    GetPage(
        name: Routes.signUpScreen ,
        page: () => const SignUpScreen(),
        binding: AuthBinding()),

    GetPage(
        name: Routes.loginScreen ,
        page: () =>  const LoginScreen(),
        binding: AuthBinding()),

    GetPage(
        name: Routes.mainScreen ,
        page: () => MainScreen(),
        bindings:[
          AuthBinding(),
          MainBininding(),
          ProductBinding(),
        ],
     ),

    GetPage(
      name: Routes.ShoppingCartScreen ,
      page: () => ShoppingCartScreen(),
      bindings:[
        AuthBinding(),
        ProductBinding(),
      ],
    ),

    GetPage(
      name: Routes.favoriteScreen,
      page: () => FavoriteScreen(),
    ),

    GetPage(
      name: Routes.sideBar,
      page: () => SideBar(),
    ),


    GetPage(
      name: Routes.profileScreen,
      page: () => ProfileScreen(),
    ),

    GetPage(
      name: Routes.settingsScreen,
      page: () => SettingsScreen(),
    ),

    GetPage(
      name: Routes.settingsScreen,
      page: () => PaymentScreen(),
    ),

    GetPage(
      name: Routes.newAdressScreen,
      page: () => NewAddressScreen(),
    ),
  ];
}

class Routes {
  static const splashScreen = '/splash';
  static const signUpScreen = '/signup_screen';
  static const loginScreen = '/login_screen';
  static const homeScreen = '/home_screen';
  static const mainScreen = '/mainScreen';
  static const ShoppingCartScreen = '/shoppingCartScreen';
 // static  const productDetailsScreen = '/productDetailsScreen';
  static const favoriteScreen ='/favoriteScreen';
  static const sideBar ='/sideBar';
  static const profileScreen ='/profileScreen';
  static const settingsScreen = '/settingsScreen';
  static const paymentScreen = '/checkoutScreen ';
  static const newAdressScreen = '/newAdressScreen';
}