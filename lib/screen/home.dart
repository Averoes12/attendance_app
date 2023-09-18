import 'package:attendance_app/component/marquee_widget.dart';
import 'package:attendance_app/screen/menu/attendance_history.dart';
import 'package:attendance_app/screen/menu/leave_request/leave_request.dart';
import 'package:attendance_app/screen/menu/payslip/payslip.dart';
import 'package:attendance_app/screen/menu/performance.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class HomeScreen extends StatefulWidget {
  final username;
  const HomeScreen({Key? key, required this.username}): super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: colorDarkPrimary,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi, ${widget.username}!", style: const TextStyle(fontSize: textLarge, color: Colors.white, fontWeight: FontWeight.bold),),
                      const Text("Mobile Application Developer", style: TextStyle(color: Colors.white, fontSize: textMedium),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset("assets/profile.jpg"),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 16,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: MediaQuery.sizeOf(context).width,
            // height: MediaQuery.sizeOf(context).height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Menu", style: TextStyle(color: colorTextPrimary, fontSize: textSemiLarge, fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                LayoutBuilder(builder: (context, constraint) {
                  if(constraint.maxWidth < 600){
                    return phoneMenu();
                  }else {
                    return tabMenu();
                  }
                }),
                const SizedBox(height: 16,),
                const Text("Today", style: TextStyle(color: colorTextPrimary, fontSize: textSemiLarge, fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.login, color: greenColor,),
                        const SizedBox(width: 16,),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: greenColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text("Clock In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                              ),
                              const SizedBox(height: 8,),
                              const Text("14 September 2023")
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Row(
                            children: [
                              Text("08:00",)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.logout, color: redColor,),
                        const SizedBox(width: 16,),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text("Clock Out", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                              ),
                              const SizedBox(height: 8,),
                              const Text("14 September 2023")
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Row(
                            children: [
                              Text("17:00",)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget phoneMenu(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AttendanceHistoryScreen())
            );
          },
          child: SizedBox(
            width: 85,
            height: 85,
            child: Column(
              children: [
                Image.asset("assets/clock.jpg", height: 40, width: 40,),
                const MarqueeWidget(
                  child: Text("Attendance History"),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LeaveRequestScreen())
            );
          },
          child: SizedBox(
            width: 85,
            child: Column(
              children: [
                Image.asset("assets/leave.jpg", height: 40, width: 40,),
                const MarqueeWidget(
                  child: Text("Leave Request"),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PerformanceScreen()));
          },
          child: SizedBox(
            width: 85,
            child: Column(
              children: [
                Image.asset("assets/performance.jpg", height: 40, width: 40,),
                const MarqueeWidget(
                  child: Text("Performance"),
                )
              ],
            ),

          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaySlipScreen()));
          },
          child: SizedBox(
            width: 85,
            child: Column(
              children: [
                Image.asset("assets/payslip.jpg", height: 40, width: 40,),
                const MarqueeWidget(
                  child: Text("Payslip"),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget tabMenu(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AttendanceHistoryScreen())
            );
          },
          child: SizedBox(
            width: 150,
            child: Column(
              children: [
                Image.asset("assets/clock.jpg", height: 40, width: 40,),
                const MarqueeWidget(
                  child: Text("Attendance History"),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LeaveRequestScreen())
            );
          },
          child: SizedBox(
            width: 150,
            child: Column(
              children: [
                Image.asset("assets/leave.jpg", height: 40, width: 40,),
                const MarqueeWidget(
                  child: Text("Leave Request"),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PerformanceScreen()));
          },
          child: SizedBox(
            width: 150,
            child: Column(
              children: [
                Image.asset("assets/performance.jpg", height: 40, width: 40,),
                const MarqueeWidget(
                  child: Text("Performance"),
                )
              ],
            ),

          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaySlipScreen()));
          },
          child: SizedBox(
            width: 150,
            child: Column(
              children: [
                Image.asset("assets/payslip.jpg", height: 40, width: 40,),
                const MarqueeWidget(
                  child: Text("Payslip"),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
