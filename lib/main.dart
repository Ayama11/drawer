// // import 'package:flutter/material.dart';

// // /// Flutter code sample for [NavigationDrawer].

// // void main() => runApp(const NavigationDrawerApp());

// // class ExampleDestination {
// //   const ExampleDestination(this.label, this.icon, this.selectedIcon);

// //   final String label;
// //   final Widget icon;
// //   final Widget selectedIcon;
// // }

// // const List<ExampleDestination> destinations = <ExampleDestination>[
// //   ExampleDestination(
// //       'Messages', Icon(Icons.widgets_outlined), Icon(Icons.widgets)),
// //   ExampleDestination(
// //       'Profile', Icon(Icons.format_paint_outlined), Icon(Icons.format_paint)),
// //   ExampleDestination(
// //       'Settings', Icon(Icons.settings_outlined), Icon(Icons.settings)),
// // ];

// // class NavigationDrawerApp extends StatelessWidget {
// //   const NavigationDrawerApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(useMaterial3: true),
// //       home: const NavigationDrawerExample(),
// //     );
// //   }
// // }

// // class NavigationDrawerExample extends StatefulWidget {
// //   const NavigationDrawerExample({super.key});

// //   @override
// //   State<NavigationDrawerExample> createState() =>
// //       _NavigationDrawerExampleState();
// // }

// // class _NavigationDrawerExampleState extends State<NavigationDrawerExample> {
// //   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

// //   int screenIndex = 0;
// //   late bool showNavigationDrawer;

// //   void handleScreenChanged(int selectedScreen) {
// //     setState(() {
// //       screenIndex = selectedScreen;
// //     });
// //   }

// //   void openDrawer() {
// //     scaffoldKey.currentState!.openEndDrawer();
// //   }

// //   Widget buildBottomBarScaffold() {
// //     return Scaffold(
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //           children: <Widget>[
// //             Text('Page Index = $screenIndex'),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: NavigationBar(
// //         selectedIndex: screenIndex,
// //         onDestinationSelected: (int index) {
// //           setState(() {
// //             screenIndex = index;
// //           });
// //         },
// //         destinations: destinations.map(
// //           (ExampleDestination destination) {
// //             return NavigationDestination(
// //               label: destination.label,
// //               icon: destination.icon,
// //               selectedIcon: destination.selectedIcon,
// //               tooltip: destination.label,
// //             );
// //           },
// //         ).toList(),
// //       ),
// //     );
// //   }

// //   Widget buildDrawerScaffold(BuildContext context) {
// //     return Scaffold(
// //       key: scaffoldKey,
// //       body: SafeArea(
// //         bottom: false,
// //         top: false,
// //         child: Row(
// //           children: <Widget>[
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 5),
// //               child: NavigationRail(
// //                 minWidth: 50,
// //                 destinations: destinations.map(
// //                   (ExampleDestination destination) {
// //                     return NavigationRailDestination(
// //                       label: Text(destination.label),
// //                       icon: destination.icon,
// //                       selectedIcon: destination.selectedIcon,
// //                     );
// //                   },
// //                 ).toList(),
// //                 selectedIndex: screenIndex,
// //                 useIndicator: true,
// //                 onDestinationSelected: (int index) {
// //                   setState(() {
// //                     screenIndex = index;
// //                   });
// //                 },
// //               ),
// //             ),
// //             const VerticalDivider(thickness: 1, width: 1),
// //             Expanded(
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                 children: <Widget>[
// //                   Text('Page Index = $screenIndex'),
// //                   ElevatedButton(
// //                     onPressed: openDrawer,
// //                     child: const Text('Open Drawer'),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //       endDrawer: NavigationDrawer(
// //         onDestinationSelected: handleScreenChanged,
// //         selectedIndex: screenIndex,
// //         children: <Widget>[
// //           Padding(
// //             padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
// //             child: Text(
// //               'Header',
// //               style: Theme.of(context).textTheme.titleSmall,
// //             ),
// //           ),
// //           ...destinations.map(
// //             (ExampleDestination destination) {
// //               return NavigationDrawerDestination(
// //                 label: Text(destination.label),
// //                 icon: destination.icon,
// //                 selectedIcon: destination.selectedIcon,
// //               );
// //             },
// //           ),
// //           const Padding(
// //             padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
// //             child: Divider(),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   @override
// //   void didChangeDependencies() {
// //     super.didChangeDependencies();
// //     showNavigationDrawer = MediaQuery.of(context).size.width >= 450;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return showNavigationDrawer
// //         ? buildDrawerScaffold(context)
// //         : buildBottomBarScaffold();
// //   }
// // }
// import 'package:flutter/material.dart';

// /// Flutter code sample for [Card].

// void main() => runApp(const CardExampleApp());

// class CardExampleApp extends StatelessWidget {
//   const CardExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Card Sample')),
//         body: const CardExample(),
//       ),
//     );
//   }
// }

// class CardExample extends StatelessWidget {
//   const CardExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Card(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             const ListTile(
//               leading: Icon(Icons.album),
//               title: Text('The Enchanted Nightingale'),
//               subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 TextButton(
//                   child: const Text('BUY TICKETS'),
//                   onPressed: () {/* ... */},
//                 ),
//                 const SizedBox(width: 8),
//                 TextButton(
//                   child: const Text('LISTEN'),
//                   onPressed: () {/* ... */},
//                 ),
//                 const SizedBox(width: 8),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

/// Flutter code sample for [Card].

void main() {
  runApp(const CardExamplesApp());
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Examples git')),
        body: const Column(
          children: <Widget>[
            Spacer(),
            ElevatedCardExample(),
            SizedBox(
              height: 10,
            ),
            FilledCardExample(),
            SizedBox(
              height: 10,
            ),
            OutlinedCardExample(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

/// An example of the elevated card type.
///
/// The default settings for [Card] will provide an elevated
/// card matching the spec:
///
/// https://m3.material.io/components/cards/specs#a012d40d-7a5c-4b07-8740-491dec79d58b
class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 5,
        child: SizedBox(
          width: 300,
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('lib/image.png'),
                width: 60,
                height: 60,
              ),
              Center(
                  child: Text(
                'Elevated Card dsfahhsas',
                style: TextStyle(fontSize: 12),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

/// An example of the filled card type.
///
/// To make a [Card] match the filled type, the default elevation and color
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

/// An example of the outlined card type.
///
/// To make a [Card] match the outlined type, the default elevation and shape
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Outlined Card')),
        ),
      ),
    );
  }
}
