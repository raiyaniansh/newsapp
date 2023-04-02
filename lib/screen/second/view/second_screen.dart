import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  HomeProvider? newsproviderfalse;
  HomeProvider? newsprovidertrue;
  @override
  Widget build(BuildContext context) {
  newsproviderfalse = Provider.of<HomeProvider>(context,listen: false);
  newsprovidertrue = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(height: 255,width: double.infinity,color: Colors.white70,child: Image.network('${newsproviderfalse!.articalList[newsproviderfalse!.i].urlToImage}',fit: BoxFit.cover,)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 565,
                padding: EdgeInsets.only(top: 15,left: 15,right: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.black),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
                            child: Text('${newsproviderfalse!.articalList[newsproviderfalse!.i].author}',style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.white38,borderRadius: BorderRadius.circular(25)),
                            child: Text('${newsproviderfalse!.articalList[newsproviderfalse!.i].publishedAt}',style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text('${newsproviderfalse!.articalList[newsproviderfalse!.i].title}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                      SizedBox(height: 15,),
                      Text('Description',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                      SizedBox(height: 5,),
                      Text('${newsproviderfalse!.articalList[newsproviderfalse!.i].description}',style: TextStyle(color: Colors.white,fontSize: 15)),
                      SizedBox(height: 15,),
                      Text('Content',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                      SizedBox(height: 5,),
                      Text('${newsproviderfalse!.articalList[newsproviderfalse!.i].content}',style: TextStyle(color: Colors.white,fontSize: 15)),
                      SizedBox(height: 15,),
                      Text('Full information',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                      SizedBox(height: 5,),
                      InkWell(onTap: () {
                        launchUrl(Uri.parse('${newsproviderfalse!.articalList[newsproviderfalse!.i].url}'));
                      },child: Text('${newsproviderfalse!.articalList[newsproviderfalse!.i].url}',style: TextStyle(color: Colors.blue,fontSize: 15))),
                      SizedBox(height: 15,),
                      Text('Published by : ${newsproviderfalse!.articalList[newsproviderfalse!.i].source!.name}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black38,shape: BoxShape.circle,
                ),
                child: InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
