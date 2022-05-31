import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_site/widgets/workwid.dart';

class WorkExpPage extends StatelessWidget {
  WorkExpPage({Key? key}) : super(key: key);
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
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 350,
                            mainAxisExtent: 120,
                            // childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const WorkWid(
                            postion: 'Flutter instructor',
                            type: 'Part Time',
                            company: 'Pepotech',
                            status: 'present');
                      }
                      if (index == 1) {
                        return const WorkWid(
                            postion: 'Flutter Developer',
                            type: 'freelance,remotly',
                            company: 'Zid solution',
                            status: '2021');
                      }
                      if (index == 2) {
                        return const WorkWid(
                            postion: 'Flutter Developer',
                            type: 'freelance,remotly',
                            company: 'Athina solution',
                            status: '2021');
                      }
                      if (index == 3) {
                        return const WorkWid(
                            postion: 'Flutter instructor',
                            type: 'Part Time',
                            company: 'techuniqe',
                            status: '2021');
                      }
                      if (index == 4) {
                        return const WorkWid(
                            postion: 'Flutter Developer',
                            type: 'freelance',
                            company: 'Self Employed',
                            status: 'present');
                      }

                      return Container();
                    }),
              )),
            ],
          )),
    );
  }
}
