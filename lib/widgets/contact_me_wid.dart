import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact_me_wid extends StatelessWidget {
  const Contact_me_wid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Icon(Icons.email),
          title: Text('amr.dar810@gmail.com'),
        ),
        ListTile(
          title: InkWell(
              onTap: () {
                launchUrl(Uri.parse(
                    'https://mail.google.com/mail/u/0/?fs=1&to=amr.dar810@gmail.com&body=Hi%20Amr&tf=cm'));
              },
              child: Container(
                color: Colors.yellow,
                margin: const EdgeInsets.all(5),
                child: const Center(
                  child: Text(
                    'send email now',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          trailing: InkWell(
              onTap: () {
                FlutterClipboard.copy('amr.dar810@gmail.com').then((value) {
                  Get.snackbar('Copied', 'email copied to clipboard');
                });
              },
              child: const Icon(Icons.copy)),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.whatsapp),
          title: Text('+201017127818'),
        ),
        ListTile(
          title: InkWell(
              onTap: () {
                launchUrl(Uri.parse('https://wa.link/e9nfk9'));
              },
              child: Container(
                color: Colors.yellow,
                margin: const EdgeInsets.all(5),
                child: const Center(
                  child: Text(
                    'send on whatsapp now',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          trailing: InkWell(
              onTap: () {
                FlutterClipboard.copy('+201017127818').then((value) {
                  Get.snackbar('Copied', 'email copied to clipboard');
                });
              },
              child: const Icon(Icons.copy)),
        )
      ],
    );
  }
}
