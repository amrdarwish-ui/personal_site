import 'package:auto_size_text/auto_size_text.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:personal_site/helpers/nav_tiles.dart';
import 'package:personal_site/pages/about_me_page.dart';
import 'package:personal_site/pages/projects_page.dart';
import 'package:personal_site/pages/skills_page.dart';
import 'package:personal_site/pages/wok_exp_page.dart';
import 'package:personal_site/widgets/contact_m_btn.dart';

import 'package:url_launcher/url_launcher.dart';

import '../widgets/contact_me_wid.dart';

class HomePc extends StatefulWidget {
  HomePc({Key? key}) : super(key: key);

  @override
  State<HomePc> createState() => _HomePcState();
}

class _HomePcState extends State<HomePc> {
  late PageController pageController;
  int currentIndex = 0;
  bool contact_me_hover = false;
  @override
  void initState() {
    pageController = PageController(initialPage: 4);

    super.initState();
    animate();
  }

  void animate() async {
    await Future.delayed(const Duration(seconds: 1));
    pageController.animateToPage(0,
        duration: const Duration(seconds: 1), curve: Curves.bounceIn);
  }

  @override
  Widget build(BuildContext context) {
    DimsConfig dimsConfig = DimsConfig(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Padding(
          padding: EdgeInsets.all(dimsConfig.deviceWidth * 0.02),
          child: ContactMeBtn(
              currentIndex: currentIndex, contact_me_hover: contact_me_hover)),
      appBar: PreferredSize(
          child: Container(
            color: Colors.yellow.withOpacity(0.9),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Amr Darwish',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          launchUrl(
                              Uri.parse('https://github.com/amrdarwish-ui'));
                        },
                        child: Image.asset(
                          'assets/git.png',
                          height: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://www.linkedin.com/in/amr-darwish-2004541aa/'));
                        },
                        child: Image.asset(
                          'assets/linked.png',
                          height: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://www.instagram.com/amrdarwish810/'));
                        },
                        child: Image.asset(
                          'assets/insta.png',
                          height: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://www.facebook.com/amr.darwish.5494/'));
                        },
                        child: Image.asset(
                          'assets/facebook.png',
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          preferredSize: const Size(1000, 50)),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: Get.height * 0.6,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if (index == 4) {
                              launchUrl(Uri.parse(
                                  'https://drive.google.com/file/d/1Y5D-kb9UbPtRx6_velAf5vZlaTJEUnTb/view?usp=sharing'));
                            } else {
                              setState(() {
                                currentIndex = index;
                                pageController.animateToPage(index,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.bounceIn);
                              });
                            }
                          },
                          child: Container(
                            color: index == currentIndex
                                ? Colors.yellow.withOpacity(0.9)
                                : Colors.black,
                            child: ListTile(
                              title: AutoSizeText(
                                navTiles(index),
                                maxFontSize: 18,
                                minFontSize: 10,
                                style: TextStyle(
                                    // fontSize: dimsConfig.deviceWidth * 0.01,
                                    color: index == currentIndex
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              physics:
                  const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex == value;
                });
              },
              children: [
                AboutMePage(),
                SkillsPage(),
                WorkExpPage(),
                ProjectsPage(),
                Container(),
              ],
            ),
            flex: 7,
          )
        ],
      ),
    );
  }
}
