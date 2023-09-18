import 'package:attendance_app/component/appbar_widget.dart';
import 'package:attendance_app/component/rounded_textfield.dart';
import 'package:attendance_app/constant/constant.dart';
import 'package:flutter/material.dart';

class AddLeaveRequestScreen extends StatelessWidget {
  const AddLeaveRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var leaveName = TextEditingController();
    var start = TextEditingController();
    var end = TextEditingController();
    var notes = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: appBarWidget(context, "Add Leave Request"),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Leave name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: textMedium),),
              SizedBox(height: 8,),
              RoundedTextField(
                controller: leaveName,
                hint: "Cuti Tahunan",
                hintColor: colorTextSecondary,
                cursorColor: colorTextPrimary,
                borderColor: colorAccent,
                textColor: colorTextPrimary,
              ),
              SizedBox(height: 16,),
              Text("Start Date", style: TextStyle(fontWeight: FontWeight.bold, fontSize: textMedium),),
              SizedBox(height: 8,),
              RoundedTextField(
                controller: start,
                hint: "01/01/2023",
                hintColor: colorTextSecondary,
                cursorColor: colorTextPrimary,
                borderColor: colorAccent,
                textColor: colorTextPrimary,
              ),
              SizedBox(height: 16,),
              Text("End Date", style: TextStyle(fontWeight: FontWeight.bold, fontSize: textMedium),),
              SizedBox(height: 8,),
              RoundedTextField(
                controller: end,
                hint: "03/01/2023",
                hintColor: colorTextSecondary,
                cursorColor: colorTextPrimary,
                borderColor: colorAccent,
                textColor: colorTextPrimary,
              ),
              SizedBox(height: 16,),
              Text("Notes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: textMedium),),
              SizedBox(height: 8,),
              RoundedTextField(
                controller: notes,
                hint: "Keperluan Keluarga",
                hintColor: colorTextSecondary,
                cursorColor: colorTextPrimary,
                borderColor: colorAccent,
                textColor: colorTextPrimary,
              ),
              SizedBox(height: 16,),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: colorPrimary,
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.save),
        ),
      ),
    );
  }
}
