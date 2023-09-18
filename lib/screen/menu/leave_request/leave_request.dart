import 'package:attendance_app/component/appbar_widget.dart';
import 'package:attendance_app/constant/constant.dart';
import 'package:attendance_app/screen/menu/leave_request/add_leave_request.dart';
import 'package:attendance_app/screen/menu/leave_request/detail_leave_request.dart';
import 'package:flutter/material.dart';

class LeaveRequestScreen extends StatelessWidget {
  const LeaveRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarWidget(context, "Leave Request"),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: 1,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailLeaveRequestScreen(
                    leaveName: "Cuti Tahunan",
                    start: "01/01/2023",
                    end: "03/01/2023",
                    notes: "Keperluan Pribadi",
                  ))
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Cuti Tahunan", style: TextStyle(fontSize: textMedium, fontWeight: FontWeight.w600),),
                        const SizedBox(height: 4,),
                        const Text("14 February - 14 February"),
                        const SizedBox(height: 4,),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text("1 Day", style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(height: 8,),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: colorPrimary,
          child: Icon(Icons.add),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddLeaveRequestScreen())
            );
          },
        ),
      ),
    );
  }
}
