import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:p3profileui/constants/constants.dart';
import 'package:p3profileui/screens/Music%20player/music_playerX12.dart';
import 'package:p3profileui/screens/bottom%20navigation%20bar/bottoml_navbar_screen.dart';
import 'package:p3profileui/screens/hotel_booking/hotel_booking_screen_2.dart';

class MusicPlayerX11 extends StatefulWidget {
  const MusicPlayerX11({super.key});

  @override
  State<MusicPlayerX11> createState() => _MusicPlayerX11State();
}

class _MusicPlayerX11State extends State<MusicPlayerX11> {
  int _selectedIndex = 0;
  List screenList = [
    HomeScreenWidgetMusicPlayer(),
    Center(
        child: Text(
      "Search",
      style: TextStyle(color: Colors.white),
    )),
    PlayListScreenMusicPlayer(),
    Center(
        child: Text(
      "More",
      style: TextStyle(color: Colors.white),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Music player"),
      //   centerTitle: true,
      //   elevation: 0,
      // ),
      // body: screenList[_selectedIndex],
      body: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            // child: HomeScreenWidgetMusicPlayer(),
            child: screenList[_selectedIndex],
          )),
      bottomNavigationBar: GNav(
        color: Colors.white,
        backgroundColor: Colors.black,
        gap: 8,
        activeColor: Colors.pink.shade300,
        duration: Duration(microseconds: 500),
        // tabBackgroundColor: Colors.green,
        tabs: [
          GButton(
            icon: FluentIcons.home_24_regular,
            text: "Home",
          ),
          GButton(
            icon: FluentIcons.search_24_regular,
            text: "Search",
          ),
          GButton(
            icon: FluentIcons.bookmark_24_regular,
            text: "Playlists",
          ),
          GButton(
            icon: FluentIcons.more_horizontal_24_regular,
            text: "More",
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreenWidgetMusicPlayer extends StatelessWidget {
  const HomeScreenWidgetMusicPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: defaultPadding),
          Center(
            child: Text(
              "Musify.",
              style: TextStyle(
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.w500,
                  color: Colors.pink.shade200,
                  fontSize: defaultFontSize * 2),
            ),
          ),
          SizedBox(height: defaultPadding * 2),
          MuscPlayerPHeadingCustom1(
            text: "Suggested Playlists",
          ),
          SizedBox(height: defaultPadding * 1.5),
          SuggestedPLayListCards(),
          SizedBox(height: defaultPadding * 2),
          MuscPlayerPHeadingCustom1(text: "Recommended for you"),
          SizedBox(height: defaultPadding * 1.5),
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.black,
                  textColor: Colors.pink.shade200,
                  leading: Container(
                    height: 60,
                    width: 55,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(musicCard[index]["imageURL"])),
                        color: Colors.pink.shade100,
                        borderRadius:
                            BorderRadius.circular(defaultBRadius / 2)),
                  ),
                  title: Text(
                    musicCard[index]["song"],
                    style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w600,
                        fontSize: defaultFontSize * 1.1),
                  ),
                  subtitle: Text(
                    musicCard[index]["author"],
                    style: TextStyle(fontFamily: "Ubuntu", color: Colors.white),
                  ),
                  trailing:
                      Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(
                      Icons.star_border,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(width: defaultPadding),
                    Icon(Icons.download_outlined, color: Colors.pink.shade200)
                  ]),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: musicCard.length),
        ],
      ),
    );
  }
}

class SuggestedPLayListCards extends StatelessWidget {
  const SuggestedPLayListCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              musicImageCardList.length,
              (index) => Container(
                    margin: EdgeInsets.only(right: defaultPadding),
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(musicImageCardList[index])),
                        borderRadius: BorderRadius.circular(defaultPadding),
                        color: Colors.pink.shade100),
                  ))),
    );
  }
}

class MuscPlayerPHeadingCustom1 extends StatelessWidget {
  const MuscPlayerPHeadingCustom1({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "Ubuntu",
          fontWeight: FontWeight.w500,
          color: Colors.pink.shade200,
          fontSize: defaultFontSize * 1.1),
    );
  }
}

class PlayListScreenMusicPlayer extends StatelessWidget {
  const PlayListScreenMusicPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          SizedBox(height: defaultPadding),
          Center(
            child: Text(
              "Playlist",
              style: TextStyle(
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.w500,
                  color: Colors.pink.shade200,
                  fontSize: defaultFontSize * 2),
            ),
          ),
          SizedBox(height: defaultPadding * 2),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.pink.shade200),
                color: Colors.black38,
                borderRadius: BorderRadius.circular(defaultBRadius * 2)),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Ubuntu",
                  ),
                  decoration: InputDecoration(
                      hintText: "search...",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: defaultPadding * 2)),
                  cursorColor: Colors.white,
                  // cursorHeight: 30,
                )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: defaultPadding * 2),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                crossAxisCount: 2),
            itemCount: musicCard2.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(musicCard2[index])),
                    color: Colors.pink.shade200,
                    borderRadius: BorderRadius.circular(defaultBRadius)),
              );
            },
          ),
          SizedBox(height: defaultPadding * 2)
        ],
      ),
    );
  }
}

List musicImageCardList = [
  "https://imgd.aeplcdn.com/664x374/n/cw/ec/47137/purosangue-suv-exterior-right-front-three-quarter-13.jpeg?isig=0&q=75",
  "https://i.scdn.co/image/ab67616d0000b273bd0a1a068fe3b8e953682375",
  "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/f9/43/08/f9430837-de0d-2df1-e402-a674f9f72436/artwork.jpg/486x486bb.png"
];

List<Map> musicCard = [
  {
    "id": 1,
    "imageURL":
        "https://people.com/thmb/9sK1S0Qz7LC3sZsatmb5QDOtcOs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(749x0:751x2):format(webp)/taylor-swift-midnights-102122-8-2dfa5f6f16284f258c5394c84ab89074.jpg",
    "song": "Hero",
    "author": "Tylor Swift",
  },
  {
    "id": 2,
    "imageURL":
        "https://hitsite.com.br/wp-content/uploads/2022/09/Sam-Smith-e-Kim-Petras-anunciam-clipe-de-Unholy-confira.jpg",
    "song": "Unholy",
    "author": "Sam Smith, Kim Petras",
  },
  {
    "id": 3,
    "imageURL":
        "https://townsquare.media/site/252/files/2022/10/attachment-Untitled-design-391.jpg?w=980&q=75",
    "song": "Lift Me Up",
    "author": "Rihanna",
  },
  {
    "id": 4,
    "imageURL":
        "https://image-prod.iol.co.za/16x9/800/Dax-Picture-Supplied?source=https://xlibris.public.prod.oc.inl.infomaker.io:8443/opencontent/objects/5d477e90-9645-5c5c-9e5b-976240784063&operation=CROP&offset=0x30&resize=968x544",
    "song": "Depression",
    "author": "Dax",
  },
  {
    "id": 5,
    "imageURL":
        "https://variety.com/wp-content/uploads/2022/10/bebe-x-david-final-1-1.jpg?w=681&h=383&crop=1",
    "song": "I'm Good",
    "author": "David Guetta & Bebe Rexha",
  },
];

List musicCard2 = [
  "https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_default.jpg",
  "https://www.udiscovermusic.com/wp-content/uploads/2020/09/LudovicoEinaudi_DeccaRecords_CesareCicardini.jpg",
  "https://ueberschall.s3.amazonaws.com/*media/CoverBig/pop-music-ueberschall.jpg/Rk9STUFUPWltYWdlL2pwZWc7SEVJR0hUPTQ0ODtOT1NUUklQPXRydWU7V0lEVEg9NDQ4/pop-music-ueberschall.jpg",
  "https://fiverr-res.cloudinary.com/videos/t_main1,q_auto,f_auto/gponv3k3ixowqjjkc5y0/lo-fi-remix-any-song.png",
  "https://media1.popsugar-assets.com/files/thumbor/hNvzq510q1F2Pw2nZdl63XFL9Lk/205x58:1065x918/fit-in/500x500/filters:format_auto-!!-:strip_icc-!!-/2019/11/20/824/n/1922398/a87578145dd58a33b4f297.96855809_/i/Billie-Eilish.jpg",
  "https://topauto.co.za/wp-content/uploads/2022/09/2022-Ferrari-Purosangue-Header-1.jpg",
  "https://townsquare.media/site/812/files/2019/12/cupcakke.jpg?w=980&q=75",
  "https://i1.sndcdn.com/avatars-VY9mxx9nDYUCANic-fzJpjA-t500x500.jpg",
];
