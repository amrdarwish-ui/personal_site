import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'contact_me_wid.dart';

class ContactMeBtn extends StatefulWidget {
  ContactMeBtn(
      {Key? key, required this.currentIndex, required this.contact_me_hover})
      : super(key: key);

  @override
  State<ContactMeBtn> createState() => _ContactMeBtnState();
  int currentIndex;
  bool contact_me_hover;
}

class _ContactMeBtnState extends State<ContactMeBtn> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: widget.currentIndex == 0 ? 0 : 1,
      child: InkWell(
        onHover: (value) {
          setState(() {
            widget.contact_me_hover = value;
          });
        },
        onTap: () {
          Get.defaultDialog(
              backgroundColor: Colors.black,
              title: 'Contact me',
              content: const Contact_me_wid());
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.yellow,
              width: 3,
            ),
            boxShadow: const [BoxShadow(color: Colors.yellow, blurRadius: 10)],
            color: widget.contact_me_hover ? Colors.black : Colors.yellow,
          ),
          child: Center(
            child: Text(
              "Contact Me",
              style: TextStyle(
                  color: !widget.contact_me_hover ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          height: 50,
          width: 100,
        ),
      ),
    );
  }
}
