import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;
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
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
                child: InkWell(
                  onTap: () {
                    homeProviderfalse!.change(index);
                    Navigator.pushNamed(context, 'news');
                  },
                  child: Row(
                    children: [
                      Container(
                          width: 100,
                          height: 65,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.network(
                                '${homeProviderfalse!.articalList[index].urlToImage}',
                                fit: BoxFit.cover,
                              ))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 230,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${homeProviderfalse!.articalList[index].title}',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.access_time,color: Colors.white70,size: 15,),
                                  SizedBox(width: 5,),
                                  Text(
                                    '${homeProviderfalse!.articalList[index].publishedAt}',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white70),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              itemCount: homeProviderfalse!.articalList.length,
            ),
          ),
          headerSliverBuilder: (context, _) => [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Discover",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 3),
                    child: Text(
                      "News from all over the world",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Search",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18),
                          ),
                          Expanded(child: SizedBox()),
                          Icon(
                            Icons.tune_outlined,
                            color: Colors.white70,
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
      ),
    );
  }
}
