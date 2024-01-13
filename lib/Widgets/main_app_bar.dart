import 'package:atea_design/cart_page.dart';
import 'package:atea_design/profile_page.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget {
  String? title;

  MainAppBar({super.key, this.title});

  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        children: [
          SizedBox(width: 4),
          Stack(
            clipBehavior: Clip.none,
            children: [
              InkResponse(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfilePage();
                  }));
                },
                child: CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                    'https://d3r4f9ursifuvh.cloudfront.net/cms/images/marketing-manager/og/Junger_Mann_im_Anzug_im_B%C3%BCro.jpg',
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          if (widget.title != null)
            Text(widget.title!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Spacer(),
          // notification icon
          InkResponse(
            onTap: () {},
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.notifications_none_outlined, size: 28),
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Text('6',
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 4),
        ],
      ),
    );
  }
}
