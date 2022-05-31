import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillsPage extends StatelessWidget {
  SkillsPage({Key? key}) : super(key: key);
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: Get.width * 0.8,
          margin: const EdgeInsets.all(
            30,
          ),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
          child: Row(
            children: [
              Expanded(
                  child: RawScrollbar(
                controller: scrollController,
                thickness: 10,
                thumbColor: Colors.yellow.withOpacity(0.6),
                interactive: true,
                isAlwaysShown: true,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 350,
                            mainAxisExtent: 650,
                            // childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                          color: Colors.black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                trailing: Image.asset(
                                  'assets/flutter.png',
                                  height: 40,
                                  width: 40,
                                ),
                                title: const Text(
                                  'Flutter',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '''Design apps with beautiful UI for futter android , ios and web
                  
HTTP for APIs
                  
Sqite for local database
                  
Shared preferences for local database (non-sql)
                  
GetStorage for local database (non-sql)
                  
url_luncher
                  
MVVM & MVC for design pattern
                  
State Management [GetX , Provider]
                  
Localization
                  
Firebase auth
                  
Firebase
                  
Firestore
                  
Firebase storage''',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      if (index == 1) {
                        return Container(
                          color: Colors.black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                trailing: Image.asset(
                                  'assets/android.png',
                                  height: 40,
                                  width: 40,
                                ),
                                title: const Text(
                                  'Android',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.025,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '''Learned android app development with java
                  
All android basics Like:
                  
Texts & buttons
                  
ListView & grid view& recycler view
                  
Tab & fragment
                  
navigation and share
                  
offline database with SQLite.
                  ''',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              const ListTile(
                                trailing: Text(
                                  '</>',
                                  style: TextStyle(fontSize: 25),
                                ),
                                title: Text(
                                  'Web',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '''Learned some about web  development with:
                  
HTML
                  
CSS
                  
JavaScript
                  ''',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      if (index == 2) {
                        return Container(
                          color: Colors.black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ListTile(
                                trailing: Text(
                                  '{ }',
                                  style: TextStyle(fontSize: 25),
                                ),
                                title: Text(
                                  'Programming',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '''Learned some programming languages like:
                  
Dart
                  
Java
                  
C++
                  
C
                  
Python
                  
SQL
                  
Javascript
                  ''',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Mark up languages',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '''Learned some programming languages like:
                  
HTML
CSS                  
XML
                  ''',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      if (index == 3) {
                        return Container(
                          color: Colors.black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              ListTile(
                                trailing: Icon(
                                  Icons.topic,
                                  size: 30,
                                ),
                                title: Text(
                                  'Other topics',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '''Learned:
                  
database
                  
data structures
                  
algorithms
                  
system analyzes and design
                  
Adobe XD
                  
Adobe photoshop 
                  
Adobe animate
                  
word 
                  
excel

power point
                  ''',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      return Container();
                    }),
              )),
            ],
          )),
    );
  }
}
