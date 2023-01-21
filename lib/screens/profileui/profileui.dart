import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            elevation: 0,
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            leading: Container(
              height: 50,
              width: 50,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            actions: [
              Container(
                height: 50,
                width: 50,
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: profileContents(),
            ),
          ),

          listNavTileButtons()
          // Container()
        ],
      ),
    );
  }
}

class listNavTileButtons extends StatelessWidget {
  const listNavTileButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        profileListTile(
            listTitle: "Privacy", icon_data: Icon(Icons.privacy_tip_outlined)),
        profileListTile(
            listTitle: "Purchase history", icon_data: Icon(Icons.history)),
        profileListTile(
            listTitle: "Help & Support", icon_data: Icon(Icons.help)),
        profileListTile(listTitle: "Settings", icon_data: Icon(Icons.settings)),
        profileListTile(
            listTitle: "Invite a friend", icon_data: Icon(Icons.person_add)),
        profileListTile(
            listTitle: "Logout", icon_data: Icon(Icons.logout_outlined)),
        Container(height: MediaQuery.of(context).size.height * 0.5)
      ]),
    );
  }
}

class profileContents extends StatelessWidget {
  const profileContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.height * 0.09,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkKdSUoqAs-vHiNjYC5-daOOC0XV5j8UQaqSJEwzfistWN2p1s0ZgRveKeecxmRTJ30f0&usqp=CAU'),
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Facebook_colored_svg_copy-1024.png"),
            ),
            SizedBox(width: 16),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn3.iconfinder.com/data/icons/2018-social-media-logotypes/1000/2018_social_media_popular_app_logo_twitter-1024.png"),
            ),
            SizedBox(width: 16),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn3.iconfinder.com/data/icons/capsocial-round/500/linkedin-512.png"),
            ),
            SizedBox(width: 16),
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-social-github-1024.png"),
            )
          ],
        ),
        SizedBox(height: 16),
        Text(
          "Jerin",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.black),
        ),
        Text(
          "@webrror",
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.grey[400]),
        ),
        SizedBox(height: 16),
        Text(
          "Mobile App Developer",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 18, color: Colors.grey[600]),
        ),
        SizedBox(
          height: 24,
        )
      ],
    );
  }
}

class profileListTile extends StatelessWidget {
  const profileListTile({
    Key? key,
    required this.listTitle,
    required this.icon_data,
  }) : super(key: key);

  final String listTitle;
  final Icon icon_data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [icon_data, SizedBox(width: 24), Text(listTitle)],
              ),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
