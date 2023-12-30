import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class btkAkademi extends StatefulWidget {
  const btkAkademi({Key? key}) : super(key: key);

  @override
  State<btkAkademi> createState() => _btkAkademiState();
}

class _btkAkademiState extends State<btkAkademi> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {

    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("B T K",textAlign: TextAlign.center,),

        automaticallyImplyLeading: false,
        actions: [
          ElevatedButton(
              onPressed:() async{
                if(await controller.canGoBack()){
                  controller.goBack();
                }
              } ,
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text("Geri")
                ],
              )),
          ElevatedButton(
              onPressed:()=> controller.reload(),
              child: Row(
                children: [
                  Icon(Icons.replay_circle_filled),
                  Text("Yenile")
                ],
              )),
          ElevatedButton(
              onPressed:(){Navigator.pop(context);} ,
              child: Row(
                children: [
                  Icon(Icons.line_style_rounded),
                  Text("ANASAYFA")
                ],
              )),

        ],

      ),
      body: WebView(
        initialUrl: "https://www.btkakademi.gov.tr/",
        javascriptMode:JavascriptMode.unrestricted ,
        zoomEnabled: true,
        allowsInlineMediaPlayback: true,
        onWebViewCreated: (controller){
          this.controller=controller;
        },

      )
    );
  }
}
