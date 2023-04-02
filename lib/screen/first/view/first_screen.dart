import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).JsonParsing();
  }

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          body: Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: homeProviderfalse!.articalList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  homeProviderfalse!.change(index);
                  Navigator.pushNamed(context, 'news');
                },
                child: Row(
                  children: [
                    Container(
                      width: 230,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "${homeProviderfalse!.articalList[index].title}",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
                          SizedBox(height: 4,),
                          Text(
                              "author : ${homeProviderfalse!.articalList[index].author}",
                              style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10,bottom: 10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "${homeProviderfalse!.articalList[index].urlToImage}"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          headerSliverBuilder: (context, _) => [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height: 40,child: Image.asset('assets/image/logopng.png'),),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12,
                          ),
                          child: Icon(Icons.person,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Welcome back ,\nAnsh Raiyani",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 300,
                              color: Colors.black,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      '${homeProviderfalse!.articalList[0].urlToImage}',
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 300,
                              width: double.infinity,
                              color: Colors.black.withOpacity(0.70),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 325,
                                    child: Text(
                                      "${homeProviderfalse!.articalList[0].title}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      homeProviderfalse!.change(0);
                                      Navigator.pushNamed(context, 'news');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Read more",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          CupertinoIcons.arrow_right,
                                          color: Colors.white,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 140),
                                      width: 55,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 0)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 1)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 2)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 3)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 300,
                              color: Colors.black,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      '${homeProviderfalse!.articalList[10].urlToImage}',
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 300,
                              width: double.infinity,
                              color: Colors.black.withOpacity(0.70),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 325,
                                      child: Text(
                                        "${homeProviderfalse!.articalList[10].title}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white),
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      homeProviderfalse!.change(10);
                                      Navigator.pushNamed(context, 'news');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Read more",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          CupertinoIcons.arrow_right,
                                          color: Colors.white,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 140),
                                      width: 55,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 0)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 1)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 2)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 3)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 300,
                              color: Colors.black,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      '${homeProviderfalse!.articalList[25].urlToImage}',
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 300,
                              width: double.infinity,
                              color: Colors.black.withOpacity(0.70),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 325,
                                      child: Text(
                                        "${homeProviderfalse!.articalList[25].title}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white),
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      homeProviderfalse!.change(25);
                                      Navigator.pushNamed(context, 'news');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Read more",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          CupertinoIcons.arrow_right,
                                          color: Colors.white,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 140),
                                      width: 55,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 0)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 1)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 2)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 3)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 300,
                              color: Colors.black,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      '${homeProviderfalse!.articalList[30].urlToImage}',
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 300,
                              width: double.infinity,
                              color: Colors.black.withOpacity(0.70),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 325,
                                      child: Text(
                                        "${homeProviderfalse!.articalList[30].title}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white),
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      homeProviderfalse!.change(30);
                                      Navigator.pushNamed(context, 'news');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Read more",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          CupertinoIcons.arrow_right,
                                          color: Colors.white,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 140),
                                      width: 55,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 0)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 1)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 2)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                (homeProvidertrue!.imgindex == 3)
                                                    ? Colors.white
                                                    : Colors.white54),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                        viewportFraction: 1,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          homeProviderfalse!.changeimg(index);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Breaking News",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
