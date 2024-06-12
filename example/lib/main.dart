import 'package:flutter/cupertino.dart';
import 'package:flutter_wallet_card_example/pass.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Flutter Wallet Card Example'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Apple wallet cards using URL'),
              const SizedBox(height: 5),
              CupertinoButton.filled(
                onPressed: () => generateWalletPassFromUri(exampleUrl),
                child: const Text('Add apple pass'),
              ),
              const SizedBox(height: 20),
              const Text('Apple wallet cards using File Path'),
              const SizedBox(height: 5),
              CupertinoButton.filled(
                onPressed: () => generateWalletPassFromPath(),
                child: const Text('Add apple pass (from path)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
