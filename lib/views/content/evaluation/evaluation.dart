import 'package:flutter/material.dart';

class Evaluation extends StatefulWidget {
  const Evaluation({super.key});

  @override
  State<Evaluation> createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> with TickerProviderStateMixin {
  late AnimationController controller;

  late PageController _pageViewController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0, 1.3),
            colors: <Color>[
              Color(0xffe9f8f5),
              Color(0xffe9ecff),
              Color(0xfffff6e9),
              Color(0xffd7dcff),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const LinearProgressIndicator(
                value: 0.1,
                semanticsLabel: 'Linear progress indicator',
              ),
              Expanded(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                  //child: Card( color: Colors.white.withAlpha(100),
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          //child: Text('Pregunta'),
                        ),
                        /*
                        Flexible(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (_, index) {
                              return const ListTile();
                            },
                          ),
                        ),
                         */
                        SizedBox(
                          height: 520,
                          child: PageView(
                            controller: _pageViewController,
                            onPageChanged: (currentPageIndex) {
                              setState(() {});
                            },
                            children: const <Widget>[
                              Center(
                                child: Text('1', style: TextStyle(fontSize: 20)),
                              ),
                              Center(
                                child: Text('2', style: TextStyle(fontSize: 20)),
                              ),
                              Center(
                                child: Text('3', style: TextStyle(fontSize: 20)),
                              ),
                              Center(
                                child: Text('4', style: TextStyle(fontSize: 20)),
                              ),
                              Center(
                                child: Text('5', style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
    required this.isOnDesktopAndWeb,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;
  final bool isOnDesktopAndWeb;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            splashRadius: 26.0,
            padding: const EdgeInsets.all(20),
            onPressed: () {
              if (currentPageIndex == 0) {
                return;
              }
              onUpdateCurrentPageIndex(currentPageIndex - 1);
            },
            icon: const Icon(
              Icons.arrow_left_rounded,
              size: 32.0,
            ),
          ),
          TabPageSelector(
            controller: tabController,
            color: colorScheme.surface,
            selectedColor: colorScheme.primary,
          ),
          IconButton(
            splashRadius: 16.0,
            padding: EdgeInsets.zero,
            onPressed: () {
              if (currentPageIndex == 2) {
                return;
              }
              onUpdateCurrentPageIndex(currentPageIndex + 1);
            },
            icon: const Icon(
              Icons.arrow_right_rounded,
              size: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}

class Buttons extends State<Evaluation> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         ElevatedButton(onPressed: (){}, child: const Text('Si')),
         ElevatedButton(onPressed: (){}, child: const Text('No')),
         ElevatedButton(onPressed: (){}, child: const Text('No lo sé')),
       ],
     ),
   );
  }
}
