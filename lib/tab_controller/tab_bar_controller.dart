import 'package:flutter/material.dart';
import '../GridView/gridview.dart';
import '../HomePage/HomePage.dart';
import '../ListView/listView.dart';
import '../column/learningColumn.dar.dart';

class TabControllerAPP extends StatefulWidget {
  // This widget is the root of your application.
  // ignore: invalid_override
  final int index;
  //const TabControllerAPP({Key? key}) : super(key: key);
  const TabControllerAPP(this.index);
  TabControllerAPPState createState() => TabControllerAPPState(index);
}

class TabControllerAPPState extends State<TabControllerAPP> {
  int _currentIndex = 0;

  TabControllerAPPState(index) {
    _currentIndex = index;
  }

  callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return MyHomePage();

      case 1:
        return ListViewLearning();
      case 2:
        return GridViewLearn();

      case 3:
        return ColumnLeanring();

      default:
        break;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(

          //resizeToAvoidBottomPadding: false,

          body: callPage(_currentIndex),
          bottomNavigationBar: SizedBox(
            height: 90,
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: _currentIndex,
                backgroundColor: Colors.teal,
                selectedItemColor: Theme.of(context).primaryColor,
                unselectedItemColor: Colors.grey,
                onTap: (value) {
                  _currentIndex = value;
                  setState(() {
                    callPage(_currentIndex);
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings_phone_outlined),
                    label: 'ListView',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'GridView',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings_phone_outlined),
                    label: 'Column',
                  ),
                ],
              ),
            ),
          )),
      onWillPop: () async {
        return false;
      },
    );
  }
}
