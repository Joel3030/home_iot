import 'package:flutter/material.dart';

class TabDevice extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle = '3 Devices';
  const TabDevice({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 60,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: const Color.fromARGB(40, 164, 167, 189),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

   

      //      height: 80,
      // child: Container(
      //   padding: const EdgeInsets.all(12),
      //   decoration: BoxDecoration(
      //       color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      //   child: Icon(
      //     icon,
      //     color: Colors.grey[600],
      //   ),
      // ),

      //   child: Row(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     Icon(icon),
      //     const SizedBox(width: 8),
      //     const Text('Policies'),
      //   ],
      // ),