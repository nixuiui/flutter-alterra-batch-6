import 'package:flutter/material.dart';

import '../widgets/yellow_box_widget.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Page"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            GridView.count(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              crossAxisCount: 5,
              childAspectRatio: 4/5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              padding: const EdgeInsets.all(16),
              children: const [
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 140,
                ),
              ],
            ),
            const SizedBox(height: 16,),
            SizedBox(
              height: 125,
              child: ListView(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  YellowBoxWidget(
                    height: 90,
                    width: 120,
                  ),
                  YellowBoxWidget(
                    height: 125,
                    width: 80,
                  ),
                  YellowBoxWidget(
                    width: 145,
                    height: 70,
                  ),
                  YellowBoxWidget(
                    height: 90,
                    width: 120,
                  ),
                  YellowBoxWidget(
                    height: 125,
                    width: 80,
                  ),
                  YellowBoxWidget(
                    width: 145,
                    height: 70,
                  ),
                  YellowBoxWidget(
                    height: 90,
                    width: 120,
                  ),
                  YellowBoxWidget(
                    height: 125,
                    width: 80,
                  ),
                  YellowBoxWidget(
                    width: 145,
                    height: 70,
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: const [
                YellowBoxWidget(
                  width: 140,
                ),
                YellowBoxWidget(
                  width: 120,
                ),
                YellowBoxWidget(
                  width: 80,
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                YellowBoxWidget(
                  width: 140,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    YellowBoxWidget(
                      height: 90,
                      width: 80,
                    ),
                    YellowBoxWidget(
                      height: 125,
                      width: 80,
                    ),
                    YellowBoxWidget(
                      width: 80,
                      height: 70,
                    ),
                  ],
                ),
                YellowBoxWidget(
                  width: 120,
                ),
                YellowBoxWidget(
                  width: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
