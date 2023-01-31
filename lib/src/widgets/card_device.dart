import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:math';

// ignore: must_be_immutable
class CardDevice extends StatelessWidget {
  final String name;
  final IconData icon;
  final bool status;

  void Function(bool)? onChanged;

  CardDevice({
    Key? key,
    required this.name,
    required this.icon,
    required this.status,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: status
              ? Colors.grey[900]
              : const Color.fromARGB(44, 164, 167, 189),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // icon
              Icon(
                icon,
                size: 65,
                color: status ? Colors.white : Colors.grey.shade700,
              ),
              // smart device name + switch
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: status ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 2,
                    child: CupertinoSwitch(
                      value: status,
                      onChanged: onChanged,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
