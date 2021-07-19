import 'package:flutter/material.dart';
import 'package:jiosaavn_clone/custom/custom_network_assets/songs_list_1.dart';
import 'package:jiosaavn_clone/custom/custom_network_assets/songs_list_2.dart';
import 'package:jiosaavn_clone/custom/custom_network_assets/songs_list_3.dart';
import 'package:jiosaavn_clone/custom/custom_network_assets/songs_list_4.dart';
import 'package:jiosaavn_clone/custom/custom_network_assets/songs_list_5.dart';
import 'package:jiosaavn_clone/devices/windows/big_screen/big_screen_widgets/home_page_widgets/home_page_divider.dart';
import 'package:jiosaavn_clone/devices/windows/big_screen/big_screen_widgets/home_page_widgets/home_page_list.dart';
import 'package:jiosaavn_clone/devices/windows/big_screen/big_screen_widgets/home_page_widgets/home_page_tiltle.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.text,
                      child: Container(
                        height: 32,
                        width: 180,
                        color: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Search",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Icon(
                                Icons.search_off_outlined,
                                color: Colors.grey[600],
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  homePageTitle("New & Trending", showViewAll: false),
                  HomePageList(
                    playlist: songsList1,
                    isWideImage: false,
                    showSurpriseMe: true,
                  ),
                  homePageDivider(),
                  homePageTitle("Keep Listening", showViewAll: true),
                  HomePageList(
                    playlist: songsList2,
                    isWideImage: false,
                    showSurpriseMe: true,
                  ),
                  homePageDivider(),
                  homePageTitle("Chart Toppers", showViewAll: true),
                  HomePageList(
                    playlist: songsList3,
                    isWideImage: true,
                    showSurpriseMe: false,
                  ),
                  homePageDivider(),
                  homePageTitle("Keep Listening", showViewAll: true),
                  HomePageList(
                    playlist: songsList4,
                    isWideImage: false,
                    showSurpriseMe: true,
                  ),
                  homePageDivider(),
                  homePageTitle("New Releases", showViewAll: true),
                  HomePageList(
                    playlist: songsList5,
                    isWideImage: false,
                    showSurpriseMe: true,
                  ),
                  homePageDivider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
