import 'package:flutter/material.dart';

class WorkWid extends StatelessWidget {
  const WorkWid(
      {Key? key,
      required this.postion,
      required this.type,
      required this.company,
      required this.status})
      : super(key: key);
  final String postion;
  final String type;
  final String status;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              postion,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              type,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
            trailing: Text(
              status,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          ListTile(
            title: Text(company),
          )
        ],
      ),
    );
  }
}
