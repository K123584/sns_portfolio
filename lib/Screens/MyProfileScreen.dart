import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget{
  List<String> MyIconImage =[
    'assets/images/adpIMG_1143.jpg',
  ];

  List<String> MyPostImages =[
    "assets/images/adpIMG_1143.jpg",
    "assets/images/adp_kiku01.jpg",
    "assets/images/adpDSC_8061.jpg",
    "assets/images/adpHnd03-.jpeg",
    "assets/images/adpIMG_1139.jpg",
    "assets/images/adpIMG_1143.jpg",
    "assets/images/26140337_m.jpg",
    "assets/images/adpIMG_1376.jpg",
    //
    "assets/images/adpIMG_1143.jpg",
    "assets/images/adp_kiku01.jpg",
    "assets/images/adpDSC_8061.jpg",
    "assets/images/adpHnd03-.jpeg",
    "assets/images/adpIMG_1139.jpg",
    "assets/images/adpIMG_1143.jpg",
    "assets/images/26140337_m.jpg",
    "assets/images/adpIMG_1376.jpg",
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('User Name', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        //appbarの段差をなくし影を消す
        elevation: 0.0,
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                    return Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(MyIconImage[index]),
                          )
                        ],
                      ),
                    );
                  },
                childCount: 1,

              ),

          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(MyPostImages[index]),
                          fit: BoxFit.cover,
                        )
                      ),
                    );
                  },
                childCount: MyPostImages.length,
              ),

              //自分の投稿した画像(リスト)の間隔/比率を調整
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                //縦の幅
                mainAxisSpacing: 10.0,
                //横の幅
                crossAxisSpacing: 10.0,
                //画像の比率
                childAspectRatio: 1.1,
              ),
          ),
        ],
      ),
    );
  }
}