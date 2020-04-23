import 'package:flutter/material.dart';
import 'package:leave_application/style/theme.dart';
import 'package:leave_application/ui/Screens/AdminScreens/AllLeavesAndLeaveDetailScreen/listCard.dart';

class AllLeaveApplicationsList extends StatefulWidget {
  @override
  _AllLeaveApplicationsListState createState() =>
      _AllLeaveApplicationsListState();
}

class _AllLeaveApplicationsListState extends State<AllLeaveApplicationsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
            title: Text("All leaves"),
            backgroundColor: AppColors.loginGradientStart),
        backgroundColor: AppColors.loginGradientStart,
        body: Container(
          decoration: BoxDecoration(
            
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListView.builder(
                // controller: lazyListscrollController,
                //  itemCount: globalItemsList.data.length,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  // Items thisListItems = globalItemsList
                  //  .data[index];
                  // (snapshot.data[snapshot.data.length - index].title);
                  //  if (index == globalItemsList.data.length - 1) {
                  print("length matched");
                  // return Padding(
                  //   padding: const EdgeInsets.only(bottom: 18.0),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: <Widget>[
                  //       SizedBox(
                  //         width: 18,
                  //         height: 18,
                  //         child: CircularProgressIndicator(
                  //           strokeWidth: 2.5,
                  //         ),
                  //       ),

                  //     ],
                  //   ),
                  // );
                  //  }
                  //  else{

                          return ListCard(
                   // items: thisListItems,

                   );
                }
                //   },

                ),
          ),
        ),
      ),
    );
  }

  
}
