import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWid extends StatelessWidget {
  const ProjectWid(
      {Key? key,
      required this.name,
      required this.type,
      required this.subtitle,
      required this.url})
      : super(key: key);
  final String name;
  final String type;
  final String subtitle;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          ListTile(
            title: Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(type),
            leading: Image.asset(
              'assets/flutter.png',
              width: 30,
            ),
          ),
          ListTile(
            title: Text(subtitle),
            trailing: ElevatedButton(
                onPressed: () {
                  if (url == '') {
                    Get.defaultDialog(
                        title: 'Sorry',
                        content: const Text(
                            'This Project code is closed source with owener company'));
                  } else {
                    launchUrl(Uri.parse(url));
                  }
                },
                child: const Text('GitHub')),
          )
        ],
      ),
    );
  }
}
