import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Color(0xff151515)),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Todo List",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          backgroundColor: Color(0xff0fb6ac),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_sharp),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          toolbarHeight: 90.0,
        ),

        body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              const Text(
                "Today",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const Text(
                "29 September, 2024",
                style: TextStyle(
                  color: const Color.fromARGB(96, 251, 251, 251),
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Color(0xff1f1f1f),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Checkbox(
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value ?? false;
                          });
                        },
                      ),
                      title: Text(
                        'Do exercies',
                        style: TextStyle(
                          decoration: isChecked1
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          color: isChecked1
                              ? Color(0xff3d3d3d)
                              : Colors.white, // Change color based on isChecked1
                        ),
                      ),
                      trailing: const Text("6:40 AM"),
                    ),
                  ],
                ),
              ),
              Card(
                color: Color(0xff1f1f1f),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Checkbox(
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value ?? false;
                          });
                        },
                      ),
                      title: Text(
                        'Buy vigetable',
                        style: TextStyle(
                          decoration: isChecked2
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          color: isChecked2
                              ? Color(0xff3d3d3d)
                              : Colors.white, // Change color based on isChecked2
                        ),
                      ),
                      trailing:const Text("8:00 AM")
                    ),
                  ],
                ),
              ),
              Card(
                color: Color(0xff1f1f1f),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Checkbox(
                        value: isChecked3,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked3 = value ?? false;
                          });
                        },
                      ),
                      title: Text(
                        'Go shopping',
                        style: TextStyle(
                          decoration: isChecked3
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          color: isChecked3
                              ?const Color(0xff3d3d3d)
                              : Colors.white, // Change color based on isChecked3
                        ),
                      ),
                      trailing: const Text("1:00 PM"),
                    ),
                  ],
                ),
              ),
              Card(
                color:const Color(0xff1f1f1f),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Checkbox(
                        value: isChecked4,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked4 = value ?? false;
                          });
                        },
                      ),
                      title: Text(
                        'Go to walk',
                        style: TextStyle(
                          decoration: isChecked4
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          color: isChecked4
                              ?const Color(0xff3d3d3d)
                              : Colors.white, // Change color based on isChecked4
                        ),
                      ),
                      trailing: const Text("5:30 PM"),
                    ),
                  ],
                ),
              ),
              Card(
                color: const Color(0xff1f1f1f),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Checkbox(
                        value: isChecked5,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked5 = value ?? false;
                          });
                        },
                      ),
                      title: Text(
                        'Check Email',
                        style: TextStyle(
                          decoration: isChecked5
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          color: isChecked5
                              ? Color(0xff3d3d3d)
                              : Colors.white, // Change color based on isChecked5
                        ),
                      ),
                      trailing: const Text("7:30 PM"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Action for floating button
          },
          child:const Icon(Icons.add),
        ),
      ),
    );
  }
}
