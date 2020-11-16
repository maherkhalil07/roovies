import 'package:flutter/material.dart';
import 'package:roovies/widgets/movies_list.dart';

class MoviewByGenre extends StatefulWidget {
  @override
  _MoviewByGenreState createState() => _MoviewByGenreState();
}

class _MoviewByGenreState extends State<MoviewByGenre>
    with TickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 48,
          bottom: TabBar(
            controller: tabController,
            isScrollable: true,
            tabs: [
              Tab(
                text: 'action',
              ),
              Tab(
                text: 'action',
              ),
              Tab(
                text: 'action',
              ),
              Tab(
                text: 'action',
              ),
              Tab(
                text: 'action',
              ),
              Tab(
                text: 'action',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            MoviesList(),
            MoviesList(),
            MoviesList(),
            MoviesList(),
            MoviesList(),
            MoviesList(),
          ],
        ),
      ),
    );
  }
}
