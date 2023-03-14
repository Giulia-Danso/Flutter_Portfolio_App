import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const HelloFlutterClass());
}

class HelloFlutterClass extends StatelessWidget {
  //this is important so that other code files and classes can access this class to give it values or take values from it
  const HelloFlutterClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Giulias First Flutter App",
      home: ScaffoldClass(),
    );
  }
}

class ScaffoldClass extends StatefulWidget {
  @override
  State<ScaffoldClass> createState() => StreamClass();
}

class StreamClass extends State<ScaffoldClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            TextButton(
              onPressed: () {
                print("You Just Pressed The Button!!");
              },
              child: Text("Action Button 1"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
            ) // TextButton
          ], // <Widget> []
          title: Text("✨Welcome to your 🍃Flutter🦜 App✨"),
          leading: Builder(
            builder: (BuildContext Context) {
              return IconButton(
                onPressed: () {},
                icon: Icon(Icons.access_time),
              );
            },
          ), // Builder
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Text("Download my Cv and follow me on my Social media"),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("About Me"),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")),
                      width: 200,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "My name is Giulia, and im an App Developer",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(Icons.email_outlined),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: InkWell(
                              onTap: () {},
                              child: Icon(Icons.web_asset_off_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: <Widget>[
                    //       SizedBox(
                    //         height: 40,
                    //         width: 40,
                    //         child: InkWell(
                    //           onTap: () {},
                    //           child: Icon(Icons.phone_android_sharp),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Contact Me",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: 100,
                      //   child: Container(
                      //     color: Colors.teal,
                      //     //width: double.infinity,
                      //     child: Text("Forth Row"),
                      //   ),
                      // ),
                      //
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter you email",
                          labelText: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter your name",
                          labelText: "Name",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Tell us your message",
                          labelText: "Message",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
