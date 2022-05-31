import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_site/widgets/project_wid.dart';

class ProjectsPage extends StatelessWidget {
  ProjectsPage({Key? key}) : super(key: key);
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    DimsConfig dims = DimsConfig(context);
    return Center(
      child: Container(
          width: dims.deviceWidth * 0.8,
          margin: const EdgeInsets.all(
            30,
          ),
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
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
                    itemCount: 12,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 350,
                            mainAxisExtent: 150,
                            // childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const ProjectWid(
                            name: 'Booker App',
                            type: 'Mobile App',
                            subtitle: 'app for reading book',
                            url: 'https://github.com/amrdarwish-ui/booker');
                      }
                      if (index == 1) {
                        return const ProjectWid(
                            name: 'My Personal Website',
                            type: 'flutter website',
                            subtitle: 'Personal Website',
                            url:
                                'https://github.com/amrdarwish-ui/personal_site');
                      }
                      if (index == 2) {
                        return const ProjectWid(
                            name: 'ecommerce store',
                            type: 'Mobile App',
                            subtitle: 'shopping app',
                            url:
                                'https://github.com/amrdarwish-ui/ecommerce_store');
                      }
                      if (index == 3) {
                        return const ProjectWid(
                            name: 'Meawer App',
                            type: 'Mobile App',
                            subtitle: 'social media app',
                            url:
                                'https://github.com/amrdarwish-ui/meawer_social_media');
                      }
                      if (index == 4) {
                        return const ProjectWid(
                            name: 'zen book',
                            type: 'flutter Website',
                            subtitle: 'reading site for athina soluations ',
                            url: '');
                      }
                      if (index == 5) {
                        return const ProjectWid(
                            name: 'Movies App',
                            type: 'Mobile App',
                            subtitle: 'displays movies data and trialers',
                            url: 'https://github.com/amrdarwish-ui/movies');
                      }
                      if (index == 6) {
                        return const ProjectWid(
                            name: 'BMI',
                            type: 'Mobile App',
                            subtitle: 'calculates BMI',
                            url:
                                'https://github.com/amrdarwish-ui/BMI-Calculator');
                      }
                      if (index == 7) {
                        return const ProjectWid(
                            name: 'Hummer screen protect',
                            type: 'flutter website',
                            subtitle: 'ecommerce site for athina soluations',
                            url: '');
                      }
                      if (index == 8) {
                        return const ProjectWid(
                            name: 'Bra7tak',
                            type: 'flutter website',
                            subtitle: 'ecommerce site for athina soluations',
                            url: '');
                      }
                      if (index == 9) {
                        return const ProjectWid(
                            name: 'Sehety App',
                            type: 'Mobile App',
                            subtitle: 'Health app for Zid Solutions company',
                            url: '');
                      }
                      if (index == 10) {
                        return const ProjectWid(
                            name: 'dachnews',
                            type: 'Mobile App',
                            subtitle: 'News App',
                            url: 'https://github.com/amrdarwish-ui/dachnews');
                      }

                      if (index == 11) {
                        return const ProjectWid(
                            name: 'statistics',
                            type: 'Flutter widgets package',
                            subtitle: 'made to display data at some diagrams',
                            url: 'https://github.com/amrdarwish-ui/statistics');
                      }

                      return Container();
                    }),
              )),
            ],
          )),
    );
  }
}
