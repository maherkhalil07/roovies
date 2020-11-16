import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:roovies/helpers/dummy_data.dart';

class NowPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: PageIndicatorContainer(
        length: 5,
        indicatorSelectorColor: Theme.of(context).accentColor,
        shape: IndicatorShape.circle(size: 5),
        padding: EdgeInsets.symmetric(vertical: 4),
        child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    DummyData.nowPlaying[index]['poster_url'],
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).primaryColor.withOpacity(0),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    )
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Text(
                      DummyData.nowPlaying[index]['movie_name'],
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.play_circle_fill_outlined,
                      color: Theme.of(context).accentColor,
                      size: 50,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
