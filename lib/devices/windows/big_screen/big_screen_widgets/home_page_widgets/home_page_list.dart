import 'package:flutter/material.dart';
import 'package:jiosaavn_clone/custom/custom_colors.dart';
import 'package:jiosaavn_clone/devices/windows/big_screen/big_screen_widgets/home_page_widgets/home_page_list_element.dart';

class HomePageList extends StatefulWidget {
  const HomePageList({Key? key, this.playlist, this.isWideImage, this.showSurpriseMe}) : super(key: key);
  final playlist;
  final isWideImage;
  final showSurpriseMe;

  @override
  _HomePageListState createState() => _HomePageListState();
}

class _HomePageListState extends State<HomePageList> {
  bool insideTheRegion = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (widget.isWideImage == true) ? 150 : 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(width: 10),
          SizedBox(
            width: (widget.isWideImage == true) ? widget.playlist.length * 200 * 1.0 : widget.playlist.length * 140 * 1.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.playlist.length,
              itemBuilder: (context, index) {
                return HomePageListElement(
                  image: widget.playlist[index][2],
                  title: widget.playlist[index][0],
                  subtitle: widget.playlist[index][1],
                  isWideImage: widget.isWideImage,
                );
              },
            ),
          ),
          (widget.showSurpriseMe == true)
              ? MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      insideTheRegion = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      insideTheRegion = false;
                    });
                  },
                  child: Container(
                    width: 140,
                    color: (insideTheRegion == true) ? Colors.grey[100] : Colors.transparent,
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 120,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: customCyan,
                              ),
                              child: Icon(
                                Icons.shuffle,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                          ),
                          Text(
                            "Surprise Me!",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            "Feeling Lucky?",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : SizedBox(),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
