import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/contact_me_wid.dart';

class AboutMePageMobile extends StatefulWidget {
  AboutMePageMobile({Key? key}) : super(key: key);

  @override
  State<AboutMePageMobile> createState() => _AboutMePageMobileState();
}

class _AboutMePageMobileState extends State<AboutMePageMobile> {
  bool contact_me_hover = false;
  @override
  Widget build(BuildContext context) {
    DimsConfig dimsConfig = DimsConfig(context);
    return Center(
      child: Container(
          width: dimsConfig.deviceWidth * 0.8,
          margin: const EdgeInsets.all(
            30,
          ),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.yellow, width: 10)),
          child: ListView(
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: dimsConfig.deviceHeight * 0.009,
                    ),
                    Image.network(
                      'https://media-exp1.licdn.com/dms/image/C4D03AQGEKzOAAau-Yg/profile-displayphoto-shrink_800_800/0/1636630579562?e=1659571200&v=beta&t=CjIyIXYuXwCn1S4DKk_HFXEFoHRXUCXLJ_AJ5BbvUas',
                      height: dimsConfig.deviceHeight * 0.1,
                    ),
                    Text(
                      'Hi..',
                      style: TextStyle(fontSize: Get.width * 0.075),
                    ),
                    const Text("I'm Amr Darwish ",
                        style: TextStyle(fontSize: 24)),
                    const Text("Software developer",
                        style: TextStyle(fontSize: 18)),
                    const Text(
                        '''Software Engineer. Studying Computer Science passionate about Mobile programming and problem-solving with a good experience in Flutter development (dart, OOP. API,Sqite).
Looking for opportunities as a software developer with an expert team of developers who help advance my career progression to senior positions in the future.
                      ''',
                        style: TextStyle(fontSize: 14)),
                    SizedBox(
                      height: dimsConfig.deviceHeight * 0.005,
                    ),
                    const Text('''Computer Science
Zagazig University
                      ''', style: TextStyle(fontSize: 14)),
                    SizedBox(
                      height: dimsConfig.deviceHeight * 0.005,
                    ),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          contact_me_hover = value;
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
                          color:
                              contact_me_hover ? Colors.black : Colors.yellow,
                        ),
                        child: Center(
                          child: Text(
                            "Contact Me",
                            style: TextStyle(
                                color: !contact_me_hover
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        height: 50,
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
