import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_ui/routes/route.dart';
import 'package:to_do_ui/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => settings(),
        )
      ],
      child: Consumer<settings>(
        builder: (context, value, child) {
          return MaterialApp(
            theme: value.darktheem ? lighttheme : darktheme,
            debugShowCheckedModeBanner: false,
            initialRoute: RouteManager.first,
            onGenerateRoute: RouteManager.generateRoute,
          );
        },
      ),
    );
  }
}
