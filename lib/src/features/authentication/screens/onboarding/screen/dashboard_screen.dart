// screens/dashboard_screen.dart
// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../models/books.dart';
import '../widgets/responsive_grid_view.dart';

class ChessBooksDashboard extends StatelessWidget {
  final List<Book> books = [
    Book(
      title: 'Winning Chess Tactics',
      author: 'Yasser Seirawan',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Book(
      title: 'Bobby Fischer Teaches Chess',
      author: 'Bobby Fischer',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Book(
      title: 'My System',
      author: 'Aron Nimzowitsch',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Book(
      title: 'Endgame Strategy',
      author: 'Mikhail Shereshevsky',
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  ChessBooksDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chess Books Dashboard',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff764abc)),
              accountName: Text(
                "Pinkesh Darji",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "pinkesh.earth@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            AboutListTile(
              // <-- SEE HERE
              icon: Icon(
                Icons.info,
              ),
              child: Text('About app'),
              applicationIcon: Icon(
                Icons.local_play,
              ),
              applicationName: 'My Cool App',
              applicationVersion: '1.0.25',
              applicationLegalese: '© 2019 Company',
              aboutBoxChildren: [
                ///Content goes here...
              ],
            ),
          ],
        ),
      ),
      body: ResponsiveGridView(books: books),
    );
  }
}
