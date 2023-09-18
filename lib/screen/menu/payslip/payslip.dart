import 'package:attendance_app/component/appbar_widget.dart';
import 'package:attendance_app/screen/menu/payslip/detail_payslip.dart';
import 'package:flutter/material.dart';

import '../../../constant/constant.dart';

class PaySlipScreen extends StatelessWidget {
  const PaySlipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarWidget(context, "Payslip"),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: 1,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DetailPayslipScreen())
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Januari", style: TextStyle(fontSize: textMedium, fontWeight: FontWeight.w600),),
                            const SizedBox(height: 4,),
                            const Text("2023"),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colorAccent,
                          ),
                          child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
