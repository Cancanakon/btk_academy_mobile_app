import 'package:btkakademi/btk.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BTK Videoları',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.indigo  ,
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'BTK Videoları'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>btkAkademi()));
                },
                child: Card(
                  color: Colors.white70,
                  shadowColor: Color.fromRGBO(255, 184, 232,100),
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget> [
                      SizedBox(width: screenWidth/2,height: screenHeight/4,
                          child: Image.asset("img/btk.png")),
                      Text("BTK\nAkademi",style: TextStyle(color: Colors.indigo,fontSize:screenWidth/12,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
                    ],
                  ) ,
                ),
              ),
            ),
            Text("created by CANCANAKON",style: TextStyle(color: Colors.white,fontSize: screenWidth/45),)


          ],
        ),
      ),
    );
  }
}
