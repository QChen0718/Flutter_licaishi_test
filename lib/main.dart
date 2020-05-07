import 'package:flutter/material.dart';
import 'package:flutter_test2/pages/customer.dart';
import 'package:flutter_test2/pages/login.dart';
import 'package:flutter_test2/pages/marketing_assistant.dart';
import 'package:flutter_test2/pages/test.dart';
import 'package:flutter_test2/widget/menuview.dart';
import 'package:flutter_test2/my_tabbat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/':(BuildContext context) => TabbarPage(),
        '/signup':(BuildContext context) => SignUpPage()
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
//      home: LoginPage()
//      TabbarPage(),
//    home: MenuPage(),
    );
  }
}
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SignUpPage builds its own Navigator which ends up being a nested
    // Navigator in our app.
    return Navigator(
      initialRoute: 'signup/personal_info',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'signup/personal_info':
          // Assume CollectPersonalInfoPage collects personal info and then
//       navigates to 'signup/choose_credentials'.
            builder = (BuildContext context) => MarketingAssistant();
            break;
//       case 'signup/choose_credentials':
//      // Assume ChooseCredentialsPage collects new credentials and then
//      // invokes 'onSignupComplete()'.
//       builder = (BuildContext _) => ChooseCredentialsPage(
//        onSignupComplete: () {
//          // Referencing Navigator.of(context) from here refers to the
//          // top level Navigator because SignUpPage is above the
//          // nested Navigator that it created. Therefore, this pop()
//          // will pop the entire "sign up" journey and return to the
//          // "/" route, AKA HomePage.
//           Navigator.of(context).pop();
//        },
//      );
//       break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
