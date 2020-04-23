import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:leave_application/style/theme.dart';
import 'package:leave_application/style/theme.dart';
import 'package:leave_application/style/theme.dart';
import 'package:leave_application/ui/Screens/AdminScreens/AllLeavesAndLeaveDetailScreen/AllLeavesList.dart';

class AdminDashboard extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<AdminDashboard> {

  
  final List<List<double>> charts = [
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4
    ],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
    ],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4
    ]
  ];

  static final List<String> chartDropdownItems = [
    'Last 7 days',
    'Last month',
    'Last year'
  ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showMessage(String message, [MaterialColor color = Colors.blue]) {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      backgroundColor: color,
      content: new Text(
        message,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      duration: const Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
            key: _scaffoldKey,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: AppColors.loginGradientStart,
            title: Center(
              child: Text('Admin Dashboard',
                  style: TextStyle(
                    color: Colors.white70,fontSize: 22.0,
                  fontFamily: "WorkSansSemiBold"
                  )),
            ),
            actions: <Widget>[
              GestureDetector(
                child: Padding(
                  padding:  EdgeInsets.only(right:8.0,),
                  child: Icon(Icons.settings_power),
                ),
                onTap: () {
                  print("Log out clicked");
                },
              )
            ],
          ),
          body: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    AppColors.loginGradientStart,
                    AppColors.loginGradientEnd
                  ],
                  begin: Alignment(0.0, 0),
                  end: Alignment(0.0, 1.0),
                  // begin: const FractionalOffset(0.0, 1.0),
                  // end: const FractionalOffset(1.0, 1.0),
                  stops: [0.0, 2.0],
                  tileMode: TileMode.clamp),
            ),
            child: StaggeredGridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              children: <Widget>[
                _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Material(
                              color: Colors.purple,
                              shape: CircleBorder(),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Icon(Icons.apps,
                                    color: Colors.white, size: 20.0),
                              )),
                          Padding(padding: EdgeInsets.only(bottom: 12.0)),
                          Text('All',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0)),
                          Text('Applications', style: TextStyle(color: Colors.black45, fontSize: 11)),
                        ]),
                  ), onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllLeaveApplicationsList()),
            ),
                ),

                _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Material(
                              color: Colors.redAccent,
                              shape: CircleBorder(),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Icon(Icons.people,
                                    color: Colors.white, size: 20.0),
                              )),
                          Padding(padding: EdgeInsets.only(bottom: 12.0)),
                          Text('All',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0)),
                          Text('Admins', style: TextStyle(color: Colors.black45, fontSize: 11.0)),
                        ]),
                        
                  ),
                  onTap: (){
                     showMessage("not available yet");
                  }
                ),
                _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Material(
                              color: Colors.teal,
                              shape: CircleBorder(),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Icon(Icons.donut_small,
                                    color: Colors.white, size: 20.0),
                              )),
                          Padding(padding: EdgeInsets.only(bottom: 12.0)),
                          Text('All',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0)),
                          Text('Dummy', style: TextStyle(color: Colors.black45, fontSize: 11.0)),
                        ]),
                  ),
                  onTap: (){
                    showMessage("not available yet");
                  }
                ),

                //_profileView(),

                _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Total Delivery Challans',
                                  style: TextStyle(color: Colors.blueAccent)),
                              Text('265K',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 34.0))
                            ],
                          ),
                          Material(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(24.0),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(Icons.timeline,
                                    color: Colors.white, size: 30.0),
                              )))
                        ]),
                  ),
                   onTap: (){
                    showMessage("not available yet");
                  }
                ),
                _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Material(
                              color: Colors.teal,
                              shape: CircleBorder(),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(Icons.laptop_mac,
                                    color: Colors.white, size: 30.0),
                              )),
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          Text('Manufacturing',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.0)),
                          Text('Parts, Machines',
                              style: TextStyle(color: Colors.black45)),
                        ]),
                  ),
                   onTap: (){
                    showMessage("not available yet");
                  }
                ),
                _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Material(
                              color: Colors.amber,
                              shape: CircleBorder(),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Icon(Icons.settings_applications,
                                    color: Colors.white, size: 20.0),
                              )),
                          Padding(padding: EdgeInsets.only(bottom: 12.0)),
                          Text('General',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0)),
                          Text('Images', style: TextStyle(color: Colors.black45)),
                        ]),
                  ),
                   onTap: (){
                    showMessage("not available yet");
                  }
                ),
                _buildTile(
                  Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Revenue',
                                      style: TextStyle(color: Colors.green)),
                                  Text('\$16K',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 34.0)),
                                ],
                              ),
                              DropdownButton(
                                  isDense: true,
                                  value: actualDropdown,
                                  onChanged: (String value) => setState(() {
                                        actualDropdown = value;
                                        actualChart = chartDropdownItems
                                            .indexOf(value); // Refresh the chart
                                      }),
                                  items: chartDropdownItems.map((String title) {
                                    return DropdownMenuItem(
                                      value: title,
                                      child: Text(title,
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0)),
                                    );
                                  }).toList())
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 4.0)),
                          Sparkline(
                            data: charts[actualChart],
                            lineWidth: 5.0,
                            lineColor: Colors.greenAccent,
                          )
                        ],
                      )),
                ),
                _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Inventory',
                                  style: TextStyle(color: Colors.redAccent)),
                              Text('173',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 34.0))
                            ],
                          ),
                          Material(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(24.0),
                              child: Center(
                                  child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.store,
                                    color: Colors.white, size: 30.0),
                              )))
                        ]),
                  ),
                  onTap: (){
                    showMessage("not available yet");
                  })
              ],
              staggeredTiles: [
                StaggeredTile.extent(1, 120.0),
                StaggeredTile.extent(1, 120.0),
                StaggeredTile.extent(1, 120.0),
                //
                StaggeredTile.extent(3, 110.0),
                StaggeredTile.extent(2, 180.0),
                StaggeredTile.extent(1, 180.0),
                StaggeredTile.extent(3, 220.0),
                StaggeredTile.extent(3, 110.0),
              ],
            ),
          )),
    );
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell(
            // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
                    print('Not set yet');
                  },
            child: child));
  }
}
