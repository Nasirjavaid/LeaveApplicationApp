import 'package:flutter/material.dart';
import 'package:leave_application/ui/Screens/AdminScreens/AllLeavesAndLeaveDetailScreen/leaveApplicationDetail.dart';
import 'package:leave_application/utils/appConstants.dart';



class ListCard extends StatelessWidget {

  //Items items;

  ListCard({
    Key key,
   // this.items,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child:Card(
        color: Colors.white,
    elevation: 8.0,
    margin: new EdgeInsets.symmetric(horizontal: 7.0, vertical: 2.0),
    child: Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
      child:  ListTile(
      contentPadding: EdgeInsets.only(left: 10.0, right: 15.0,),
      leading: Container(
        padding: EdgeInsets.only(right: 0.0),
        // decoration: new BoxDecoration(
        //     border: new Border(
        //         right: new BorderSide(width: 1.0, color: Colors.black26))),
        child: Container(
          height: 40,
          width: 40,
          child: Center(
            child: Material(
                                  color: Colors.blue[500],
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: Center(
                                      child: Padding(
                                    padding: EdgeInsets.all(1.0),
                                    child: Icon(Icons.person,
                                        color: Colors.white70, size: 20.0),
                                  ))),
          ),
        ),
      ),
      title:  Padding(
        padding: const EdgeInsets.only(top:12.0),
        child: Text(  "Employe name", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
      ) ,
     // : Text("N/A",style: AppTypographyStyles.smallTextStyleNotVailable), 
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Padding(
        padding: const EdgeInsets.only(top:5.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           //  items.dcNo !=null ?
              Text("Short leave", style: AppTypographyStyles.smallTextStyle.apply(color:Colors.black54), ) ,
              //: Text("N/A",style:AppTypographyStyles.smallTextStyle),
          //  items.dcDate !=null ? Text(DateTimeConverter.getDateAndTime(items.dcDate), style: AppTypographyStyles.smallTextStyle) :Text("N/A",style:AppTypographyStyles.smallTextStyle),
             Row(children: <Widget>[
              Spacer(),
              
             // items.status !=null ?
              // Text(items.status, style: AppTypographyStyles.smallTextStyle.apply(color:Color.fromRGBO(28, 192, 159, .9))) :
               Text("Added date",style:AppTypographyStyles.smallTextStyle.apply(color:Colors.black54)),

          ],)
          ],
         
        ),
      ),
      // trailing:
      //     Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: (){
            
             Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LeaveApplicationDetail())
           );
            
            }

    ),
      ),));
    
  }
  }




