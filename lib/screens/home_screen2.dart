import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yayasan_prihatin/app_drawer.dart';
import 'package:yayasan_prihatin/screens/berita_prihatin_screen.dart';
import 'package:yayasan_prihatin/screens/elemen_prihatin.dart';
import 'package:yayasan_prihatin/screens/fungsi.dart';
import 'package:yayasan_prihatin/screens/maklumat_korporat.dart';
import 'package:yayasan_prihatin/screens/mutiara_kata.dart';
import 'package:yayasan_prihatin/screens/registration_screen.dart';
import 'package:yayasan_prihatin/screens/terkini_prihatin_screen.dart';
import 'package:yayasan_prihatin/screens/visi_misi.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'news_screen.dart';

final List<String> youtubeURL = [
  'https://www.youtube.com/watch?v=YLWe_Iy0njQ',
  'https://www.youtube.com/watch?v=wTlSsWuJUAs',
  'https://www.youtube.com/watch?v=pwKxeLrCLuo',
  'https://www.youtube.com/watch?v=drL4IBWGthA',
  'https://www.youtube.com/watch?v=XS3Osnl6Xf0',
  'https://www.youtube.com/watch?v=kWbxe66Jm7M',
  'https://www.youtube.com/watch?v=r9RkpyIGKv8',
  'https://www.youtube.com/watch?v=UvoaF6D-y1Q',
];
final List<String> yID = [
  'YLWe_Iy0njQ',
  'wTlSsWuJUAs',
  'pwKxeLrCLuo',
  'drL4IBWGthA',
  'XS3Osnl6Xf0',
  'kWbxe66Jm7M',
  'r9RkpyIGKv8',
  'UvoaF6D-y1Q',
];

final List<String> thumbnail = [
  getYoutubeThumbnail(youtubeURL[0]),
  getYoutubeThumbnail(youtubeURL[1]),
  getYoutubeThumbnail(youtubeURL[2]),
  getYoutubeThumbnail(youtubeURL[3]),
  getYoutubeThumbnail(youtubeURL[4]),
  getYoutubeThumbnail(youtubeURL[5]),
  getYoutubeThumbnail(youtubeURL[6]),
  getYoutubeThumbnail(youtubeURL[7]),
];
String getYoutubeThumbnail(String videoUrl) {
  final Uri uri = Uri.tryParse(videoUrl);
  if (uri == null) {
    return null;
  }

  return 'https://img.youtube.com/vi/${uri.queryParameters['v']}/0.jpg';
}

class HomeScreen2 extends StatefulWidget {
  static const id = 'Home2';
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentVideo = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> videoSliders = thumbnail
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        context: context,
                        builder: (context) => Container(
                          height: 500,
                          child: BottomSheetContainer(url: yID[_currentVideo]),
                        ),
                      );
                    });
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        children: <Widget>[
                          Image.network(item, fit: BoxFit.cover, width: 1000.0),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                '',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ))
        .toList();
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: AppDrawer(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.red,
                ),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              ),
              elevation: 0,
              pinned: true,
              backgroundColor: Colors.white,
              flexibleSpace: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Image(
                  image: AssetImage('assets/logo-prihatin-banner.png'),
                ),
              ),
              collapsedHeight: 100,
              expandedHeight: 150,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.indigo[800],
                          Color(0XFFe52d27),
                          // Color(0XFFb31217),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ExpansionTile(
                      
                      title: Center(
                        child: Text(
                          'MENGENAI KAMI',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      children: <Widget>[
                        ListTile(
                          leading: SizedBox(),
                          title: Text(
                            'Mutiara Kata',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => AboutUsScreen(
                            //       url:
                            //           'https://demo01.yayasanprihatin.com/mutiara-kata-pengerusi/',
                            //       title: 'Mutiara Kata',
                            //     ),
                            //   ),
                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MutiaraKata(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: SizedBox(),
                          title: Text(
                            'Maklumat Korporat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => AboutUsScreen(
                            //       url:
                            //           'https://demo01.yayasanprihatin.com/maklumat-korporat/',
                            //       title: 'Maklumat Korporat',
                            //     ),
                            //   ),
                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MaklumatKorporat(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: SizedBox(),
                          title: Text(
                            'Visi dan Misi',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => AboutUsScreen(
                            //       url:
                            //           'https://demo01.yayasanprihatin.com/visi-misi/',
                            //       title: 'Visi dan Misi',
                            //     ),
                            //   ),
                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VisiMisi(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: SizedBox(),
                          title: Text(
                            'Fungsi',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => AboutUsScreen(
                            //       url:
                            //           'https://demo01.yayasanprihatin.com/fungsi/',
                            //       title: 'Fungsi',
                            //     ),
                            //   ),
                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Fungsi(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: SizedBox(),
                          title: Text(
                            'Elemen Prihatin',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => AboutUsScreen(
                            //       url:
                            //           'https://demo01.yayasanprihatin.com/elemen-prihatin/',
                            //       title: 'Elemen Prihatin',
                            //     ),
                            //   ),
                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ElemenPrihatin(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.indigo[800],
                          Color(0XFFe52d27),
                          // Color(0XFFb31217),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BeritaPrihatinScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(250, 60),
                      ),
                      child: Text(
                        'BERITA@PRIHATIN',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.indigo[800],
                          Color(0XFFe52d27),
                          // Color(0XFFb31217),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TerkiniPrihatinScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(250, 60),
                      ),
                      child: Text(
                        'TERKINI@PRIHATIN',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.indigo[800],
                          Color(0XFFe52d27),
                          // Color(0XFFb31217),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrationScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(250, 60),
                      ),
                      child: Text(
                        'PELUANG PENDIDIKAN',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: CarouselSlider(
                items: videoSliders,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentVideo = index;
                      });
                    }),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: yID.map((url) {
                  int index = yID.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentVideo == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheetContainer extends StatefulWidget {
  BottomSheetContainer({this.url});
  final String url;

  @override
  _BottomSheetContainerState createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    String id = YoutubePlayer.convertUrlToId(widget.url);
    _controller = YoutubePlayerController(
      initialVideoId: id,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  void listener() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  _controller.removeListener(listener);
                  Navigator.pop(context);
                },
                child: Text(
                  'Tutup',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Center(
                child: YoutubePlayerBuilder(
                    player: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                      bottomActions: [
                        CurrentPosition(),
                        ProgressBar(isExpanded: true),
                        RemainingDuration(),
                      ],
                      onReady: () {
                        _controller.addListener(listener);
                      },
                    ),
                    builder: (context, player) {
                      return Column(
                        children: [
                          // some widgets
                          player,
                          //some other widgets
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
