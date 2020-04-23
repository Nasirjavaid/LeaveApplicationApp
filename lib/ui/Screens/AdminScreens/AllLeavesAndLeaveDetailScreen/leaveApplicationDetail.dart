import 'package:flutter/material.dart';
import 'package:leave_application/style/theme.dart';
import 'package:leave_application/utils/appConstants.dart';

class LeaveApplicationDetail extends StatefulWidget {
  @override
  _LeaveApplicationDetailState createState() => _LeaveApplicationDetailState();
}

class _LeaveApplicationDetailState extends State<LeaveApplicationDetail> {
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
    return Container(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            title: Text("Leave detail"),
            backgroundColor: AppColors.loginGradientStart),
        // backgroundColor: AppColors.loginGradientStart,

        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 15, left: 15),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                empName(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 15),
                empNumber(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 15),
                empLeaveType(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 15),
                empDesignation(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 15),
                empLeaveDateFrom(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 15),
                empLeaveDateTo(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 15),
                empReamrks(),
                SizedBox(
                  height: 5,
                ),
                // Container(
                //   height: 1,
                //   color: Colors.black12,
                //   width: MediaQuery.of(context).size.width,
                // ),
                SizedBox(height: 15),
                buttonAccept()
              ],
            ),
          ),
        ),
      ),
    );
  }

// for emplyee name widget
  Widget empName() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Employee name",
              style: AppTypographyStyles.mainHeadingTextStyle
                  .apply(color: Colors.black54)),
          SizedBox(
            height: 5,
          ),
          Text(
            "Json Alvi",
            style:
                AppTypographyStyles.smallTextStyle.apply(color: Colors.black38),
          )
        ]);
  }

  Widget empNumber() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Employee no.",
              style: AppTypographyStyles.mainHeadingTextStyle
                  .apply(color: Colors.black54)),
          SizedBox(
            height: 5,
          ),
          Text(
            "3465",
            style:
                AppTypographyStyles.smallTextStyle.apply(color: Colors.black38),
          )
        ]);
  }

  Widget empLeaveType() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Leave type.",
              style: AppTypographyStyles.mainHeadingTextStyle
                  .apply(color: Colors.black54)),
          SizedBox(
            height: 5,
          ),
          Text(
            "Short leave",
            style:
                AppTypographyStyles.smallTextStyle.apply(color: Colors.black38),
          )
        ]);
  }

  Widget empDesignation() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Designation",
              style: AppTypographyStyles.mainHeadingTextStyle
                  .apply(color: Colors.black54)),
          SizedBox(
            height: 5,
          ),
          Text(
            "Accountant",
            style:
                AppTypographyStyles.smallTextStyle.apply(color: Colors.black38),
          )
        ]);
  }

  Widget empLeaveDateFrom() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("From.",
              style: AppTypographyStyles.mainHeadingTextStyle
                  .apply(color: Colors.black54)),
          SizedBox(
            height: 5,
          ),
          Text(
            "2020/03/26",
            style:
                AppTypographyStyles.smallTextStyle.apply(color: Colors.black38),
          )
        ]);
  }

  Widget empLeaveDateTo() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("To",
              style: AppTypographyStyles.mainHeadingTextStyle
                  .apply(color: Colors.black54)),
          SizedBox(
            height: 5,
          ),
          Text(
            "2020/4/05",
            style:
                AppTypographyStyles.smallTextStyle.apply(color: Colors.black38),
          )
        ]);
  }

  Widget empReamrks() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Remarks",
              style: AppTypographyStyles.mainHeadingTextStyle
                  .apply(color: Colors.black54)),
          SizedBox(
            height: 5,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style:
                AppTypographyStyles.smallTextStyle.apply(color: Colors.black38),
          )
        ]);
  }

  Widget buttonAccept() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20, top: 30, bottom: 15),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: AppColors.loginGradientEnd,
                  offset: Offset(1.0, 3.0),
                  blurRadius: 20.0,
                ),
                BoxShadow(
                  color: AppColors.loginGradientEnd,
                  offset: Offset(1.0, 3.0),
                  blurRadius: 10.0,
                ),
              ],
              gradient: new LinearGradient(
                  colors: [Colors.blue, Colors.blue],
                  begin: const FractionalOffset(0.2, 0.2),
                  end: const FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: MaterialButton(
                highlightColor: AppColors.loginGradientEnd,
                splashColor: AppColors.loginGradientEnd,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 22.0),
                  child: Text(
                    "Reject",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontFamily: "WorkSansBold"),
                  ),
                ),
                onPressed: () {
                  showMessage("Dummy leave rejectted");
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminDashboard()));
                }
                // showInSnackBar("Login button pressed")
                ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: AppColors.loginGradientEnd,
                  offset: Offset(1.0, 3.0),
                  blurRadius: 20.0,
                ),
                BoxShadow(
                  color: AppColors.loginGradientEnd,
                  offset: Offset(1.0, 3.0),
                  blurRadius: 10.0,
                ),
              ],
              gradient: new LinearGradient(
                  colors: [Colors.blue, Colors.blue],
                  begin: const FractionalOffset(0.2, 0.2),
                  end: const FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: MaterialButton(
                highlightColor: AppColors.loginGradientEnd,
                splashColor: AppColors.loginGradientEnd,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 22.0),
                  child: Text(
                    "Accept",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontFamily: "WorkSansBold"),
                  ),
                ),
                onPressed: () {
                  showMessage("Dummy leave Accepted");
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminDashboard()));
                }
                // showInSnackBar("Login button pressed")
                ),
          ),
        ],
      ),
    );
  }
}
