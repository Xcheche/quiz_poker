import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Colors.blueGrey,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar Demo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Builder(builder: (context) {
                return FloatingActionButton(
                  elevation: 0,
                  shape: const CircleBorder(),
                  foregroundColor: Colors.white,
                  splashColor: Colors.blueAccent.shade100,
                  highlightElevation: 0,

                  // Show a SnackBar
                  tooltip: 'Show a SnackBar',
                  backgroundColor: Colors.blueAccent.shade100,
                  onPressed: () {
                    // Show a SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('I love Flutter framework'),
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.greenAccent,
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                            print('Undo pressed');
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          },
                          textColor: Colors.black,
                        ),
                      ),
                    );
                  },
                  child: const Icon(Icons.call_missed),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
