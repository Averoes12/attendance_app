import 'package:attendance_app/component/appbar_widget.dart';
import 'package:attendance_app/constant/constant.dart';
import 'package:flutter/material.dart';

class DetailPayslipScreen extends StatelessWidget {
  const DetailPayslipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarWidget(context, "Detail Payslip"),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("January 2023", style: TextStyle(fontSize: textSemiLarge, fontWeight: FontWeight.w600),),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Net Pay", style: TextStyle(color: colorTextSecondary,fontSize: textMedium, fontWeight: FontWeight.w600),),
                          Text("5.000.000", style: TextStyle(color: greenColor, fontSize: textMedium, fontWeight: FontWeight.w600,),)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Deduction", style: TextStyle(color: colorTextSecondary,fontSize: textMedium, fontWeight: FontWeight.w600)),
                          Text("1.000.000", style: TextStyle(color: redColor, fontSize: textMedium, fontWeight: FontWeight.w600),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Earnings", style: TextStyle(fontSize: textSemiLarge, fontWeight: FontWeight.w600),),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Basic", style: TextStyle(color: colorTextSecondary,),),
                          Text("3.000.000", style: TextStyle(color: colorTextPrimary,),)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Functional Allowance", style: TextStyle(color: colorTextSecondary,),),
                          Text("2.000.000", style: TextStyle(color: colorTextPrimary,),)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Other Allowance", style: TextStyle(color: colorTextSecondary,),),
                          Text("1.000.000", style: TextStyle(color: colorTextPrimary,),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Deduction", style: TextStyle(fontSize: textSemiLarge, fontWeight: FontWeight.w600),),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("BPJS JHT", style: TextStyle(color: colorTextSecondary,),),
                          Text("250.000", style: TextStyle(color: colorTextPrimary,),)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("BPJS JP", style: TextStyle(color: colorTextSecondary,),),
                          Text("350.000", style: TextStyle(color: colorTextPrimary,),)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("BPJS JKK", style: TextStyle(color: colorTextSecondary,),),
                          Text("200.000", style: TextStyle(color: colorTextPrimary,),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("BPJS JK", style: TextStyle(color: colorTextSecondary,),),
                          Text("200.000", style: TextStyle(color: colorTextPrimary,),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
