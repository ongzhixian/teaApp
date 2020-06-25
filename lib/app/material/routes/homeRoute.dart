import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // ZX: Later
  //final ScannedDataStore dataStore;

  //HomePage({Key key, this.title, @required this.dataStore}) : super(key: key);
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application.
  // It is stateful, meaning that it has a State object
  // (defined below) that contains fields that affect how it looks.

  // This class is the configuration for the state. It holds the values
  // (in this case the title) provided by the parent (in this case the App widget)
  // and used by the build method of the State.
  // Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int _counter = 0;
  // String topic = "Hello";
  final tagTextController = TextEditingController();

  String tagString = "NoTag";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Tag', style: TextStyle(fontSize: 28)),
            Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextField(
                  obscureText: false,
                  controller: tagTextController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'tag text',
                  ),
                )),
            SizedBox(
              width: double.infinity,
              child: Text(tagString),
            ),
            RaisedButton(
              onPressed: () async {
                //Navigator.push(
                //    context,
                //    MaterialPageRoute(builder: (context) => ScannerRoute()),
                //);

                // https://pub.dev/packages/flutter_barcode_scanner

                // Stop camera after successful scan
                // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                //     "#ff6666", "Cancel", false, ScanMode.DEFAULT);

                // // Use the below for continuous camera scan
                // FlutterBarcodeScanner.getBarcodeStreamReceiver(
                //         "#ff6666", "Cancel", false, ScanMode.DEFAULT)
                //     .listen((barcode) {
                //   /// barcode to be used

                //   // TODO: Write code to store scanned data
                //   // var now = new DateTime.now();
                //   // var utcNow = now.toUtc();
                //   widget.dataStore.writeScannedData(barcode);

                // setState(() {
                //   topic = barcode;
                // });
                //});
              },
              child: const Text('Scan', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                // _makePostRequest().then((x) {
                //   setState(() {
                //     topic = x;
                //   });
                // });
                // widget.storage.readCounter().then((int value) {
                //   setState(() {
                //     _counter = value;
                //   });
                // });

                //Navigator.push(
                //    context,
                //    MaterialPageRoute(builder: (context) => UploadRoute()),
                //);

                setState(() {
                  tagString = tagTextController.text;
                });
              },
              child: const Text('Upload', style: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),

      // ZX: Remove the counter floating button
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
