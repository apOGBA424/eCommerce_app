import 'package:ecommerce_app/models/choicesdata.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: choiceData.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        //  SECTION FOR MENU AND SEARCH BAR ONLY
        Expanded(
            flex: 1,
            child: Container(
                child: Column(children: [
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                        Text(
                          'HomeScreen',
                          style: TextStyle(fontSize: 35, color: Colors.black),
                        ),
                        SizedBox(width: 50)
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 232, 232, 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        // fillColor: ),
                        hintText: 'Search Restaurant',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 24),
                        prefixIcon: Icon(Icons.search_outlined),
                        suffixIcon: Icon(Icons.east_rounded),
                      ),
                    ),
                  ),
                  Divider(),

                  // SECTION FOR THE REST OF THE SCREEN
                  Expanded(
                    flex: 4,
                    child: DefaultTabController(
                      length: choiceData.length,
                      child: Scaffold(
                        appBar: AppBar(
                          elevation: 0.5,
                          backgroundColor: Colors.white,
                          bottom: PreferredSize(
                            preferredSize: Size.fromHeight(0.0),
                            child: TabBar(
                              controller: _tabController,
                              tabs: choiceData.map((e) => null).toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                color: Colors.pink)),
      ],
    ),
  );
}
