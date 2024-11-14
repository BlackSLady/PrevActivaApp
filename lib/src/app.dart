import 'package:flutter/material.dart';
import '../views/home_page.dart';
import '../views/Account.dart';
import '../views/Settings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prevención Activa',
      theme: ThemeData(useMaterial3: true),
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
    //final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
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
