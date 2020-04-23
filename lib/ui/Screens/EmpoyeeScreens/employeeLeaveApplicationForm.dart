import 'package:flutter/material.dart';
import 'package:leave_application/style/theme.dart';
import 'package:leave_application/ui/CommonWidgets/Paintings/wavyBackgroundTopEmpLeaveApplicationForm.dart';

class EmployeeLeaveApplicationForm extends StatefulWidget {
  @override
  _EmployeeLeaveApplicationFormState createState() =>
      _EmployeeLeaveApplicationFormState();
}

class _EmployeeLeaveApplicationFormState
    extends State<EmployeeLeaveApplicationForm> {

  
  DateTime selectedDate = DateTime.now();
  List<String> leaveTypesDropdownItems = [
    'Sick leave',
    'Short leave',
    'Casual leave'
  ];

  //date controllers from and to
  // TextEditingController _controllerDateFrom = TextEditingController();
  // TextEditingController _controllerDateto = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //String actualDropdown = chartDropdownItems[0];
  String dropDownCurrentValue;
  DateTime dateFrom, dateTo;
  String empName,empNumber,empDesignation,empRemarks;


  void showMessage(String message, [MaterialColor color = Colors.blue]) {
    _scaffoldKey.currentState.showSnackBar(
        new SnackBar(backgroundColor: color, content: new Text(message,style: TextStyle(fontWeight:FontWeight.w700),),duration: const Duration(seconds:1),));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key:_scaffoldKey ,
        extendBodyBehindAppBar: true,
        //  backgroundColor: Color(0xFFEEEEEE),
        appBar: AppBar(
          elevation: 0.0,
          // actions: <Widget>[
          //   GestureDetector(
          //                   child: Padding(
          //       padding: const EdgeInsets.only(right:8.0),
          //       child: Icon(Icons.settings_power),
          //     ),
          //     onTap: () => print("Logout clicked")
          //   )
          // ],
          title: Text(
            "",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 22.0,
                fontFamily: "WorkSansSemiBold"),
          ),
          backgroundColor: Colors.transparent,
          // backgroundColor: AppColors.loginGradientStart,
        ),

        body: Form(
          key: _formKey,
          child: Stack(children: <Widget>[
            WavyBackgroundEmpLeaveApplicationForm(),
            _mainBody()
          ]),
        ),
      ),
    );
  }

  Widget _mainBody() {
    return Center(
        child: Container(
      height: MediaQuery.of(context).size.height - 20,
      width: MediaQuery.of(context).size.width - 50,
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 0.0, bottom: 25),
            child: Text(
              "Leave \nApplication \nForm",
              style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w900,
                  fontSize: 25.0,
                  fontFamily: "WorkSansSemiBold"),
            ),
          ),
          // child: new Image(
          //     width: 100.0,
          //     height: 150.0,
          //     fit: BoxFit.fill,
          //     image: new AssetImage('assets/img/login.png')),

          etFieldEmployeeName,
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: firstRowEmpNoAndLeaveType(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: etFieldEmployeeDasignation,
          ),
          Padding(
              padding: EdgeInsets.only(top: 8),
              child: secondRowWithLeaveFromAndToDate(context)),

          Padding(
            padding: EdgeInsets.only(top: 8),
            child: etFieldRemarks,
          ),

          Padding(
              padding: EdgeInsets.only(top: 10), child: _roundedCornerButton())

          // dropDownLeaveType

          // DropdownButton(
          //     isDense: true,
          //     value:dropDownCurrentValue,
          //     onChanged: (String value) => setState(() {
          //           value = dropDownCurrentValue;

          //         }),
          //     items:leaveTypesDropdownItems.map((String title) {
          //       return DropdownMenuItem(
          //         value: title,
          //         child: Row( children:<Widget>[
          //                            Text(title,
          //               style: TextStyle(
          //                   color: Colors.black54,
          //                   fontWeight: FontWeight.w400,
          //                   fontSize: 14.0)),
          //         ]),
          //       );
          //     }).toList())
        ]),
      ),
    ));
  }

  Widget firstRowEmpNoAndLeaveType() {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: new Padding(
            padding: const EdgeInsets.all(0.0),
            child: etFieldEmployeeNo,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        new Padding(
          padding: const EdgeInsets.all(0.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 47.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              // width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: DropdownButton<String>(
                  hint: Text(
                    "Select leave type",
                    style: TextStyle(color: Colors.black54),
                  ),
                  underline: Text(""),
                  elevation: 0,
                  // icon: FaIcon(
                  //   FontAwesomeIcons.arrowCircleDown,
                  //   color: Colors.redAccent,
                  //   size: 35,
                  // ),
                  value: dropDownCurrentValue,
                  focusColor: Colors.redAccent,
                  items: leaveTypesDropdownItems.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              value,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            // SizedBox(
                            //   width: 6,
                            // ),
                            // FaIcon(
                            //   FontAwesomeIcons.arrowCircleDown,
                            //   color: Colors.black54,
                            //   size: 12,
                            // ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    //TODO: must call api On change to alter the results from Map
                    setState(() {
                      dropDownCurrentValue = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget secondRowWithLeaveFromAndToDate(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: new Padding(
            padding: const EdgeInsets.all(0.0),
            child: etFieldLeaveDateFrom(context),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        new Padding(
          padding: const EdgeInsets.all(0.0),
          child: Align(
              alignment: Alignment.bottomRight,
              child: etFieldLeaveDateTo(context)),
        ),
      ],
    );
  }

  Widget etFieldLeaveDateFrom(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Select leave  date from ");
        _selectDate(context, 1);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.loginGradientStart),
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5),
                topRight: Radius.circular(5))),
        width: MediaQuery.of(context).size.width * 0.4,
        height: 47,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: dateFrom == null
                ? Text("Date from",
                    style: TextStyle(
                      color: Colors.black54,
                      backgroundColor: Colors.white,
                    ))
                : Text(
                    "${dateFrom.toLocal()}".split(' ')[0],

                    style: TextStyle(
                      color: Colors.black54,
                      backgroundColor: Colors.white,
                    ),

                    // validator: (String empNo) {
                    //   if (empNo.isEmpty) {
                    //     return "Leave date to";
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  ),
          ),
        ),
      ),
    );
  }

  Widget etFieldLeaveDateTo(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectDate(context, 2);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.loginGradientStart),
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5),
                topRight: Radius.circular(5))),
        width: MediaQuery.of(context).size.width * 0.4,
        height: 47,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: dateTo == null
                ? Text(
                    "Date to",

                    style: TextStyle(
                      color: Colors.black54,
                      backgroundColor: Colors.white,
                    ),

                    // validator: (String empNo) {
                    //   if (empNo.isEmpty) {
                    //     return "Leave date to";
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  )
                : Text(
                    "${dateTo.toLocal()}".split(' ')[0],
                    style: TextStyle(
                      color: Colors.black54,
                      backgroundColor: Colors.white,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _roundedCornerButton() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.loginGradientEnd,
            offset: Offset(1.0, 6.0),
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
            child: Text(
              "Apply",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: "WorkSansBold"),
            ),
          ),
          onPressed: () {
            print("Submit button pressed");

           
            if (_formKey.currentState.validate()) {
              //   // If the form is valid, display a Snackbar.
              //  Scaffold.of(context).showSnackBar(snackBar);
              //   Navigator.push(
              //   context,
              //  // MaterialPageRoute(builder: (context) => HomeScreen()),
              // );
               if(dropDownCurrentValue== null)
            {
              showMessage("Please select leave type");
              return;
            }else if(dateFrom ==null)
            {
              showMessage("Please select leave starting date");
              return;
            }
            else if(dateTo == null)
            {
              showMessage("Please select leave ending date");
              return;
            }
            }
          }
          // showInSnackBar("Login button pressed")

          ),
    );
  }

  Future<Null> _selectDate(BuildContext context, int etSelectionId) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        //etDateController.text = "${selectedDate.toLocal()}".split(' ')[0];

        if (etSelectionId == 1) {
          dateFrom = picked;
        } else if (etSelectionId == 2) {
          dateTo = picked;
        }
      });
  }



Widget etFieldEmployeeNo = TextFormField(
  //cursorColor: AppColors.loginGradientStart,
  keyboardType: TextInputType.number,
  textCapitalization: TextCapitalization.words,
  autocorrect: false,

  //controller: firstNameTextController,
  //validator: _validateFirstName,
  maxLength: 50,

  style: TextStyle(
    color: Colors.black54,
    //fontFamily: ScreensFontFamlty.FONT_FAMILTY
  ),
  decoration: InputDecoration(
      counterText: "",
      // counterStyle: TextStyle(color: Colors.white),
      // labelText: "Employee No.",
      // prefixIcon: Icon(
      //   Icons.alternate_email,
      //   size: 17,
      //   color:  AppColors.loginGradientStart,
      // ),

      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      focusedBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      hintText: "Employee no.",
      hintStyle: TextStyle(
        color: Colors.black38,
        //fontFamily: ScreensFontFamlty.FONT_FAMILTY
      ),
      filled: true,
      fillColor: Colors.white,
      errorStyle: TextStyle(color: Colors.red, fontStyle: FontStyle.italic)),
  validator: (String empNo) {
   
    if (empNo.isEmpty) {
      return "Please enter Emp No.";
    } else {
      return null;
    }
  },
);

var etFieldEmployeeName = TextFormField(
  //cursorColor: AppColors.loginGradientStart,
  keyboardType: TextInputType.emailAddress,
  textCapitalization: TextCapitalization.words,
  autocorrect: false,

  //controller: firstNameTextController,
  //validator: _validateFirstName,
  maxLength: 50,
  style: TextStyle(
    color: Colors.black54,
    //fontFamily: ScreensFontFamlty.FONT_FAMILTY
  ),
  decoration: InputDecoration(
      counterStyle: TextStyle(color: Colors.white),
      // labelText: "Employee No.",
      // prefixIcon: Icon(
      //   Icons.alternate_email,
      //   size: 17,
      //   color:  AppColors.loginGradientStart,
      // ),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      focusedBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      hintText: "Employee name.",
      hintStyle: TextStyle(
        color: Colors.black38,
        //fontFamily: ScreensFontFamlty.FONT_FAMILTY
      ),
      filled: true,
      fillColor: Colors.white,
      errorStyle: TextStyle(color: Colors.red, fontStyle: FontStyle.italic)),
  validator: (String empName) {
    if (empName.isEmpty) {
      return "Please enter Emp No.";
    } else {
      return null;
    }
  },
);

// var dropDownLeaveType = new DropdownButton<String>(
//   items: <String>['A', 'B', 'C', 'D'].map((String value) {
//     return new DropdownMenuItem<String>(
//         value: value,
//         child: Row(
//           children: <Widget>[
//             Icon(Icons.star),
//             Text(value),
//           ],
//         ));
//   }).toList(),
//   onChanged: (_) {},
// );

var etFieldEmployeeDasignation = TextFormField(
  //cursorColor: AppColors.loginGradientStart,
  keyboardType: TextInputType.emailAddress,
  textCapitalization: TextCapitalization.words,
  autocorrect: false,

  //controller: firstNameTextController,
  //validator: _validateFirstName,
  maxLength: 50,
  style: TextStyle(
    color: Colors.black54,
    //fontFamily: ScreensFontFamlty.FONT_FAMILTY
  ),
  decoration: InputDecoration(
      counterStyle: TextStyle(color: Colors.white),
      // labelText: "Employee No.",
      // prefixIcon: Icon(
      //   Icons.alternate_email,
      //   size: 17,
      //   color:  AppColors.loginGradientStart,
      // ),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      focusedBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      hintText: "Designation",
      hintStyle: TextStyle(
        color: Colors.black38,
        //fontFamily: ScreensFontFamlty.FONT_FAMILTY
      ),
      filled: true,
      fillColor: Colors.white,
      errorStyle: TextStyle(color: Colors.red, fontStyle: FontStyle.italic)),
  validator: (String empDesignation) {
    if (empDesignation.isEmpty) {
      return "Please enter your designation.";
    } else {
      return null;
    }
  },
);

var etFieldRemarks = TextFormField(
  //cursorColor: AppColors.loginGradientStart,
  keyboardType: TextInputType.multiline,
  textCapitalization: TextCapitalization.words,
  autocorrect: false,

  //controller: firstNameTextController,
  //validator: _validateFirstName,
  maxLength: 1000,
  maxLines: 5,
  minLines: 3,

  style: TextStyle(
    color: Colors.black54,
    //fontFamily: ScreensFontFamlty.FONT_FAMILTY
  ),

  decoration: InputDecoration(
      counterStyle: TextStyle(color: Colors.blue),
      // labelText: "Employee No.",
      // prefixIcon: Icon(
      //   Icons.alternate_email,
      //   size: 17,
      //   color:  AppColors.loginGradientStart,
      // ),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      focusedBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Color.fromARGB(255, 232, 232, 232),
              color: AppColors.loginGradientStart,
              width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      hintText: "Remarks",
      hintStyle: TextStyle(
        color: Colors.black38,
        //fontFamily: ScreensFontFamlty.FONT_FAMILTY
      ),
      filled: true,
      fillColor: Colors.white,
      errorStyle: TextStyle(color: Colors.red, fontStyle: FontStyle.italic)),
  validator: (String empName) {
    if (empName.isEmpty) {
      return "Please enter Emp No.";
    } else {
      return null;
    }
  },
);



}



