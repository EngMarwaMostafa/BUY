
import 'package:buyit/logic/bindings/RegisterBinding.dart';
import 'package:buyit/logic/bindings/LoginBinding.dart';
import 'package:buyit/logic/bindings/MainBinding.dart';
import 'package:buyit/logic/bindings/ProdutBinding.dart';
import 'package:buyit/logic/bindings/SignupBinding.dart';
import 'package:buyit/view/screens/ProductDetailsScreen.dart';
import 'package:buyit/view/screens/ReviewScreen.dart';
import 'package:buyit/view/screens/auth/ForgotPasswordScreen.dart';
import 'package:buyit/view/screens/ckeck_out/EditAddressScreen.dart';
import 'package:buyit/view/screens/ckeck_out/NewAddressScreen.dart';
import 'package:buyit/view/screens/PaymentScreen.dart';
import 'package:buyit/view/screens/FavoriteScreen.dart';
import 'package:buyit/view/screens/MainScreen.dart';
import 'package:buyit/view/screens/SettingsScreen.dart';
import 'package:buyit/view/screens/ShoppingCartScreen.dart';
import 'package:buyit/view/screens/auth/LoginScreen.dart';
import 'package:buyit/view/screens/auth/ProfileScreen.dart';
import 'package:buyit/view/screens/auth/SignupScreen.dart';
import 'package:buyit/view/screens/onBoarding.dart';
import 'package:buyit/view/widgets/SideBar.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';

class AppRoutes {
  //initialRoute
  static const onBoardScreen = Routes.onBoardScreen;
   static const mainScreen = Routes.mainScreen;

   //getPages
  static final routes = [
    GetPage(
        name: Routes.signUpScreen ,
        page: () => const SignUpScreen(),
        binding: SignupBinding()),

    GetPage(
        name: Routes.loginScreen ,
        page: () =>  const LoginScreen(),
        binding: LoginBinding()),


    GetPage(
        name: Routes.mainScreen ,
        page: () => MainScreen(),
        bindings:[
          LoginBinding(),
          MainBininding(),
          ProductBinding(),
        ],
     ),

    GetPage(
      name: Routes.ShoppingCartScreen ,
      page: () => ShoppingCartScreen(),
      bindings:[
       LoginBinding(),
        ProductBinding(),
      ],
    ),

    GetPage(
      name: Routes.favoriteScreen,
      page: () => FavoriteScreen(),
    ),

    GetPage(
      name: Routes.reviewScreen,
      page: () => ReviewScreen(),
    ),

    GetPage(
      name: Routes.sideBar,
      page: () => SideBar(),
    ),

    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
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
      name: Routes.paymentScreen,
      page: () => PaymentScreen(),
      binding:
        ProductBinding(),
    ),

    GetPage(
      name: Routes.newAdressScreen,
      page: () => NewAddressScreen(),
    ),

    GetPage(
      name: Routes.editAdressScreen,
      page: () => EditAddressScreen(),
    ),

    GetPage(
      name: Routes.onBoardScreen,
      page: () => OnBoardScreen(),
    ),

  ];
}

class Routes {
  static const splashScreen = '/splash';
  static const onBoardScreen = '/onBoardScreen';
  static const signUpScreen = '/signup_screen';
  static const loginScreen = '/login_screen';
  static  const forgotPasswordScreen = '/forgotPasswordScreen';
  static const homeScreen = '/home_screen';
  static const mainScreen = '/mainScreen';
  static const ShoppingCartScreen = '/shoppingCartScreen';
 static  const productDetailsScreen = '/productDetailsScreen';
  static const favoriteScreen ='/favoriteScreen';
  static const sideBar ='/sideBar';
  static const profileScreen ='/profileScreen';
  static const settingsScreen = '/settingsScreen';
  static const paymentScreen = '/paymentScreen ';
  static const newAdressScreen = '/newAddressScreen';
  static const editAdressScreen = '/editAddressScreen';
  static const reviewScreen = '/reviewScreen';
}