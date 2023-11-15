import 'package:flutter/material.dart';
import 'package:internet_connectivity/provider/connection.dart';
import 'package:provider/provider.dart';
import 'internet.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final net = Provider.of<Connection>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: net.neTisOn == true
                  ? const InternetAvailable()
                  : const InternetNotAvailable()),
          Expanded(
            child: Center(
              child: Text(net.neTisOn
                  ? "Ya Hooo ! You Are Connected With Internet"
                  : "So Sad! Your Connection is lost"),
            ),
          )
        ],
      ),
    );
  }
}
