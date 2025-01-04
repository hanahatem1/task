import 'package:flutter/material.dart';

class SwitchNotif extends StatefulWidget {
  const SwitchNotif({super.key});

  @override
  State<SwitchNotif> createState() => _SwitchNotifState();
}

class _SwitchNotifState extends State<SwitchNotif> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '  Recieve Notifction',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
        ),
        Switch(
        value:isSwitched ,
        onChanged: (bool val){
         setState(() {
           isSwitched=val;
         });
        },
        activeColor: const Color(0xffed008b),
        
       )
      ],
    );
  }
}
