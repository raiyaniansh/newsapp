import 'package:flutter/material.dart';

class ProfilrScreen extends StatefulWidget {
  const ProfilrScreen({Key? key}) : super(key: key);

  @override
  State<ProfilrScreen> createState() => _ProfilrScreenState();
}

class _ProfilrScreenState extends State<ProfilrScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white12,
                          image: DecorationImage(image: AssetImage('assets/image/logopng.png')),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ansh Raiyani",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
                          SizedBox(height: 5,),
                          Text("Surat",style: TextStyle(color: Colors.white,fontSize: 18),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(height: 1,width: double.infinity,color: Colors.white10,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select your city',style: TextStyle(color: Colors.white70,fontSize: 18),),
                      Icon(Icons.location_on_outlined,color: Colors.white70,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(height: 1,width: double.infinity,color: Colors.white10,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select your favourite category',style: TextStyle(color: Colors.white70,fontSize: 18),),
                      Icon(Icons.grid_view,color: Colors.white70,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(height: 1,width: double.infinity,color: Colors.white10,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select language',style: TextStyle(color: Colors.white70,fontSize: 18),),
                      Icon(Icons.language,color: Colors.white70,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(height: 1,width: double.infinity,color: Colors.white10,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Saved news',style: TextStyle(color: Colors.white70,fontSize: 18),),
                      Icon(Icons.bookmark_border,color: Colors.white70,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(height: 1,width: double.infinity,color: Colors.white10,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Feedback',style: TextStyle(color: Colors.white70,fontSize: 18),),
                      Icon(Icons.feedback_outlined,color: Colors.white70,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(height: 1,width: double.infinity,color: Colors.white10,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('About us',style: TextStyle(color: Colors.white70,fontSize: 18),),
                      Icon(Icons.info_outline,color: Colors.white70,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(height: 1,width: double.infinity,color: Colors.white10,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
