import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:leave_application/style/theme.dart';
import 'package:leave_application/ui/CommonWidgets/Paintings/wavyBackgroundEmpDashboard.dart';
import 'package:leave_application/ui/Screens/EmpoyeeScreens/employeeLeaveApplicationForm.dart';

class EmployeeDashboard extends StatefulWidget {
  @override
  _EmployeeDashboardState createState() => _EmployeeDashboardState();
}

class _EmployeeDashboardState extends State<EmployeeDashboard> {
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
            actions: <Widget>[
              GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.settings_power),
                  ),
                  onTap: () => print("Logout clicked"))
            ],
            title: Center(
                child: Text(
              "Employee DashBoard",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 22.0,
                  fontFamily: "WorkSansSemiBold"),
            )),
            backgroundColor: AppColors.loginGradientStart,
          ),
          body: Stack(children: <Widget>[WavyHeaderBackground(), _mainBody()])),
    );
  }

  Widget _mainBody() {
    return Container(
      decoration: new BoxDecoration(
          // gradient: new LinearGradient(
          //     colors: [
          //       AppColors.loginGradientStart,
          //       AppColors.loginGradientEnd
          //     ],
          //     begin: Alignment(0.0, 0),
          //     end: Alignment(0.0, 1.0),
          //     // begin: const FractionalOffset(0.0, 1.0),
          //     // end: const FractionalOffset(1.0, 1.0),
          //     stops: [0.0, 2.0],
          //     tileMode: TileMode.clamp),
          ),
      child: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          _buildTile(
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(

                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('All leave \nApplications',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        SizedBox(
                          height: 20,
                        ),
                        Flexible(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              children: <Widget>[
                                Text('17',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 30.0)),
                                Spacer(),
                                // Icon(
                                //   Icons.calendar_today,
                                //   size: 40,
                                //   color: Colors.white,
                                // )
                                Material(
                                    color: Colors.amber,
                                    shape: CircleBorder(),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Icon(Icons.perm_contact_calendar,
                                          color: Colors.white, size: 20.0),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              startColor: Color.fromRGBO(255, 89, 88, 0.9),
              endColor: Color.fromRGBO(255, 49, 48, 0.9), onTap: () {
            showMessage("not available yet");
          }),

          _buildTile(
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(

                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Pending \nNotifications',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        SizedBox(
                          height: 20,
                        ),
                        Flexible(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              children: <Widget>[
                                Text('6547',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 30.0)),
                                Spacer(),
                                // Icon(
                                //   Icons.notifications_active,
                                //   size: 40,
                                //   color: Colors.white,
                                // )

                                Material(
                                    color: Colors.blue,
                                    shape: CircleBorder(),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Icon(Icons.notifications_active,
                                          color: Colors.white, size: 20.0),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              startColor: Color.fromRGBO(160, 89, 254, 0.9),
              endColor: Color.fromRGBO(108, 50, 254, 0.9), onTap: () {
            showMessage("not available yet");
          }),

          _buildTile(
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(

                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Pending \nActivities',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            children: <Widget>[
                              Text('234',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40.0)),
                              Spacer(),
                              // Icon(
                              //   Icons.notifications_active,
                              //   size: 40,
                              //   color: Colors.white,
                              // )

                              Material(
                                  color: Color.fromRGBO(155, 99, 241, 1),
                                  shape: CircleBorder(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Icon(Icons.local_activity,
                                        color: Colors.white, size: 20.0),
                                  )),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              startColor: Color.fromRGBO(214, 49, 72, 0.9),
              endColor: Color.fromRGBO(254, 136, 99, 1), onTap: () {
            showMessage("not available yet");
          }),

          _buildTile(
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(

                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Upcoming Vocations',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        SizedBox(
                          height: 20,
                        ),
                        Flexible(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              children: <Widget>[
                                Text('1347',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 30.0)),
                                Spacer(),
                                // Icon(
                                //   Icons.notifications_active,
                                //   size: 40,
                                //   color: Colors.white,
                                // )

                                Material(
                                    color: Colors.blue,
                                    shape: CircleBorder(),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Icon(Icons.notifications_active,
                                          color: Colors.white, size: 20.0),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              startColor: Color(0xFF848484),
              endColor: Colors.black, onTap: () {
            showMessage("not available yet");
          }),

          _buildTile(
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(

                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Pending \nPayment',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        SizedBox(
                          height: 20,
                        ),
                        Flexible(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              children: <Widget>[
                                Text('265',
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30.0,
                                    )),
                                Spacer(),
                                // Icon(
                                //   Icons.notifications_active,
                                //   size: 40,
                                //   color: Colors.white,
                                // )

                                Material(
                                    color: Colors.amber,
                                    shape: CircleBorder(),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Icon(Icons.attach_money,
                                          color: Colors.white, size: 20.0),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              startColor: Color.fromRGBO(3, 171, 244, 0.9),
              endColor: Color.fromRGBO(8, 11, 252, 0.9), onTap: () {
            showMessage("not available yet");
          }),

          //Rounded corner button
          _roundedCornerButton(
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(

                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Apply for leaves',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Spacer(),
                        Icon(Icons.arrow_forward,
                            color: Colors.white, size: 25.0),
                      ]),
                ),
              ),
              startColor: Color.fromRGBO(14, 228, 149, 1.0),
              endColor: Color.fromRGBO(14, 228, 149, 1.0), onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EmployeeLeaveApplicationForm()));
          })
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 145.0),
          StaggeredTile.extent(1, 145.0),
          StaggeredTile.extent(2, 150.0),
          StaggeredTile.extent(1, 145.0),
          StaggeredTile.extent(1, 145.0),
          StaggeredTile.extent(2, 51.0),

          //
          // StaggeredTile.extent(3, 110.0),
          // StaggeredTile.extent(2, 180.0),
          // StaggeredTile.extent(1, 180.0),
          // StaggeredTile.extent(3, 220.0),
          // StaggeredTile.extent(3, 110.0),
        ],
      ),
    );
  }

  Widget _buildTile(Widget child,
      {Function() onTap, Color startColor, Color endColor}) {
    return Container(
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(3),
              topRight: Radius.circular(3)),
          gradient: new LinearGradient(
              colors: [startColor, endColor],
              begin: Alignment(0.0, 0),
              end: Alignment(0.0, 1.0),
              // begin: const FractionalOffset(0.0, 1.0),
              // end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 2.0],
              tileMode: TileMode.clamp),
        ),
        //elevation: 14.0,
        //borderRadius: BorderRadius.circular(12.0),

        //  borderRadius: BorderRadius.only(topLeft : Radius.circular(25),bottomRight : Radius.circular(25),),
        //shadowColor: Color(0x802196F3),
        child: InkWell(
            // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
                    print('Not set yet');
                  },
            child: child));
  }

  Widget _roundedCornerButton(Widget child,
      {Function() onTap, Color startColor, Color endColor}) {
    return Container(
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              topRight: Radius.circular(5)),
          gradient: new LinearGradient(
              colors: [startColor, endColor],
              begin: Alignment(0.0, 0),
              end: Alignment(0.0, 1.0),
              // begin: const FractionalOffset(0.0, 1.0),
              // end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 2.0],
              tileMode: TileMode.clamp),
        ),
        //elevation: 14.0,
        //borderRadius: BorderRadius.circular(12.0),

        //  borderRadius: BorderRadius.only(topLeft : Radius.circular(25),bottomRight : Radius.circular(25),),
        //shadowColor: Color(0x802196F3),
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
