import 'package:attendance_app/constant/constant.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final username;
  const ProfileScreen({Key? key, required this.username}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2,
                      color: colorAccent,
                      style: BorderStyle.solid
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/profile.jpg"),
                ),
              ),
              const SizedBox(height: 18,),
              Text(username, style: const TextStyle(fontSize: textLarge, color: colorTextPrimary, fontWeight: FontWeight.bold),),
              const Text("Mobile Application Developer", style: TextStyle(color: colorTextPrimary, fontSize: textMedium),),
              const SizedBox(height: 32,),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NIP", style: TextStyle(color: colorTextSecondary, fontSize: textMedium)),
                      SizedBox(height: 4,),
                      Text("Entity", style: TextStyle(color: colorTextSecondary, fontSize: textMedium)),
                      SizedBox(height: 4,),
                      Text("Site", style: TextStyle(color: colorTextSecondary, fontSize: textMedium)),
                    ],
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("28347240237", style: TextStyle(color: colorTextPrimary, fontSize: textMedium)),
                        SizedBox(height: 4,),
                        Text("PT Young Wild Free", style: TextStyle(color: colorTextPrimary, fontSize: textMedium)),
                        SizedBox(height: 4,),
                        Text("PT Young Wild Free", style: TextStyle(color: colorTextPrimary, fontSize: textMedium)),
                      ],
                    ),
                  )
                ],
              ),
              const Divider(
                height: 16,
                color: colorDivider,
                thickness: 3,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("Info Division", style: TextStyle(color: colorTextPrimary, fontSize: textSemiLarge, fontWeight: FontWeight.bold),)),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Division", style: TextStyle(color: colorTextSecondary, fontSize: textMedium)),
                      SizedBox(height: 4,),
                      Text("Department", style: TextStyle(color: colorTextSecondary, fontSize: textMedium)),
                      SizedBox(height: 4,),
                      Text("Section", style: TextStyle(color: colorTextSecondary, fontSize: textMedium)),SizedBox(height: 4,),
                      SizedBox(height: 4,),
                      Text("Position", style: TextStyle(color: colorTextSecondary, fontSize: textMedium)),
                    ],
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Directorate of Engineering", textAlign: TextAlign.end, style: TextStyle(color: colorTextPrimary, fontSize: textMedium)),
                        SizedBox(height: 4,),
                        Text("Digital Product", textAlign: TextAlign.end, style: TextStyle(color: colorTextPrimary, fontSize: textMedium)),
                        SizedBox(height: 4,),
                        Text("Enterprise Product", textAlign: TextAlign.end, style: TextStyle(color: colorTextPrimary, fontSize: textMedium)),
                        SizedBox(height: 4,),
                        Text("Mobile Application Developer", textAlign: TextAlign.end, style: TextStyle(color: colorTextPrimary, fontSize: textMedium)),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
