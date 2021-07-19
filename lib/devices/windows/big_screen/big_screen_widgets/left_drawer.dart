import 'package:flutter/material.dart';
import 'package:jiosaavn_clone/devices/windows/big_screen/big_screen_widgets/left_drawer_widgets/left_drawer_tile.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  _LeftDrawerState createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  bool insideTheRegion = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: MouseRegion(
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
                  color: (insideTheRegion == true) ? Colors.grey[300] : Colors.grey[200],
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Icon(
                      Icons.menu_outlined,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.1,
            height: 0.1,
          ),
          Expanded(
            child: ListView(
              // shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: [
                LeftDrawerTile(icon: Icons.house_outlined, text: "Home"),
                LeftDrawerTile(icon: Icons.person_outline_outlined, text: "My Music"),
                LeftDrawerTile(icon: Icons.history_edu_outlined, text: "History"),
                LeftDrawerTile(icon: Icons.new_releases_outlined, text: "New Release"),
                LeftDrawerTile(icon: Icons.playlist_add_check_rounded, text: "Charts & Playlist"),
                LeftDrawerTile(icon: Icons.radio_button_checked_outlined, text: "Radio Stations"),
                LeftDrawerTile(icon: Icons.send_and_archive_rounded, text: "Browse & Discover"),
                LeftDrawerTile(icon: Icons.show_chart_rounded, text: "Shows & Podcasts"),
              ],
            ),
          ),
          SizedBox(
            height: 144.1,
            child: Column(
              children: [
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                  height: 0.1,
                ),
                LeftDrawerTile(icon: Icons.airplanemode_active_rounded, text: "Go Offline"),
                LeftDrawerTile(icon: Icons.language_outlined, text: "Music Languages"),
                LeftDrawerTile(icon: Icons.settings_accessibility_outlined, text: "Settings"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
