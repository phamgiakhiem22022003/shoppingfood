import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shoppingfood/Page/CheckOutPage.dart';
import 'package:shoppingfood/Page/Home_page.dart';
import 'package:shoppingfood/Page/ItemsPage.dart';
import 'package:shoppingfood/Page/PayMentScreen.dart';
import 'package:shoppingfood/Page/login_page.dart';
import 'package:shoppingfood/splash_screen/splash_screen.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
        apiKey: "AIzaSyAUgK8WGPP6N4Fbs48-y5dY-J_njGRf3R8",
        appId: "1:1034979088959:web:d0dad0e44f84d7628bb68a",
        messagingSenderId: "1034979088959",
        projectId: "shoppingfood-327f2",
    ));
  }else {
    await Firebase.initializeApp();
  }

  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/PopularFood': (context) => ItemsPage(),
        '/Home': (context) => HomePage(),
        '/logout': (context) => LoginPage(),
        '/CheckOut': (context) => CheckOutPage(),
        '/Continue Shopping': (context) => HomePage(),
        '/PaymentScreen': (context) => PaymentScreen(),
      },

      title: 'Flutter Demo',
      home: SplashScreen(
        child: LoginPage(),
      )
    );
  }
}

