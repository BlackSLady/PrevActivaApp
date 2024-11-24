import 'package:flutter/material.dart';
import '../views/home_page.dart';
import '../views/Account.dart';
import '../views/Settings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    VisualDensity;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prevención Activa',
      //theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent)),
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xffE0E3F4),
          appBarTheme: const AppBarTheme(color: Color(0xffe9f8f5))),
      home: const NavBar(),
    );
  }
}

// --- NavBar --- //

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(
            () {
              currentPageIndex = index;
            },
          );
        },
        //indicatorColor: const Color(0xFF3BB6A7),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Color(0xff3BB6A7),
              size: 30,
            ),
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.account_circle,
              color: Color(0xff3BB6A7),
              size: 30,
            ),
            icon: Icon(Icons.account_circle_outlined),
            label: 'Perfil',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.settings,
              color: Color(0xff3BB6A7),
              size: 30,
            ),
            icon: Icon(Icons.settings_outlined),
            label: 'Configuración',
          ),
        ],
      ),
      body: <Widget>[
        // Home
        const HomePage(),

        // Account
        const Account(),

        // Settings
        const Settings(),
      ][currentPageIndex],
    );
  }
}

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0, 1.3),
            colors: <Color>[
              Color(0xffe9f8f5),
              Color(0xffe9ecff),
              Color(0xfffff6e9),
              Color(0xffd7dcff),
            ],
          ),
        ),
      ),
    );
  }
}
