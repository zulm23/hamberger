import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hamberger_app/header.dart';

void main() {
  runApp(
    // const MyApp(),
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.teal, centerTitle: true),
          bottomAppBarColor: Colors.teal,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.orange.shade300)),
      home: const Hamberger(),
    );
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({super.key});

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              elevation: 10,
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                  )),
              title: const Text('"Hamberger"'),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                    )),
              ],
            ),
            const Header(),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                color: Colors.red,
                height: 850,
              )
            ])),
            SliverList(delegate: SliverChildListDelegate([])),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(45)),
          child: Container(
            color: Colors.transparent,
            child: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Row(children: [
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    color: Colors.white,
                    icon: const Icon(Icons.add_alert)),
                const Spacer(),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    color: Colors.white,
                    icon: const Icon(Icons.turned_in)),
                const Spacer(),
              ]),
            ),
          ),
        ));
  }
}
