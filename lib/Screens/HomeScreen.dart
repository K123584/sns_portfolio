import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  //他のユーザーが投稿した(と想定した時の)画像のリスト　
  // ※タイムラインに表示される
  List<String> postimages = [
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
    // "assets/images/",
  ];

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('sns_portfolio', style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(Icons.favorite_border),
            color: Colors.black,
          ),
          IconButton(
              onPressed: () => {},
              icon: Icon(Icons.sms_outlined),
            color: Colors.black,
          ),

        ],

        backgroundColor: Colors.white,
      ),
          body: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: <Widget>[

              //ストーリー
//               SliverList(
//                 delegate: SliverChildBuilderDelegate(
//                       (BuildContext context, int index){
//                     return Container(
//                       padding: EdgeInsets.all(7),
//                       child: Row(
//                         children: [
//                           CircleAvatar(
//                             backgroundImage: AssetImage(postimages[index]),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                   childCount: postimages.length,
//                 ),
//               ),
              //
              //投稿
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index){
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(postimages[index]),
                                ),
                                Text(' User Name'),
                              ],
                            ),
                          ),
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(postimages[index]),
                                )
                            ),
                          )
                        ],
                      )
                    );
                  },
                  childCount: postimages.length,
                ),
              ),
            ],
          ),
    );
  }
}

// class _HomeScreenState extends State<HomeScreen>{
//   //他のユーザーが投稿した(と想定した時の)画像のリスト　
//   // ※タイムラインに表示される
//   List<String> postimages = [
//     "assets/images/adpIMG_1143.jpg",
//     "assets/images/adp_kiku01.jpg",
//     "assets/images/adpDSC_8061.jpg",
//     "assets/images/adpHnd03-.jpeg",
//     "assets/images/adpIMG_1139.jpg",
//     "assets/images/adpIMG_1143.jpg",
//     "assets/images/26140337_m.jpg",
//     "assets/images/adpIMG_1376.jpg",
//     //
//     "assets/images/adpIMG_1143.jpg",
//     "assets/images/adp_kiku01.jpg",
//     "assets/images/adpDSC_8061.jpg",
//     "assets/images/adpHnd03-.jpeg",
//     "assets/images/adpIMG_1139.jpg",
//     "assets/images/adpIMG_1143.jpg",
//     "assets/images/26140337_m.jpg",
//     "assets/images/adpIMG_1376.jpg",
//     // "assets/images/",
//   ];
//
//   @override
//   Widget build(BuildContext context){
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('sns_portfolio', style: TextStyle(color: Colors.black),),
//         backgroundColor: Colors.white,
//       ),
//       body: CustomScrollView(
//         scrollDirection: Axis.vertical,
//
//         slivers: <Widget>[
//
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index){
//                 return Container(
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         backgroundImage: AssetImage(postimages[index]),
//                       )
//                     ],
//                   ),
//                 );
//               },
//               childCount: postimages.length,
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index){
//                 return Container(
//                   height: 400,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(postimages[index]),
//                       )
//                   ),
//
//                 );
//               },
//               childCount: postimages.length,
//             ),
//           )
//
//           // SliverList(delegate: delegate)
//         ],
//       ),
//     );
//   }
// }

// class PostContents extends StatelessWidget {
//   const  PostContents({
//     Key? key,
//     required this.postimages,
//   }) : super(key: key);
//
//   final List<String> postimages;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: (postimages.length),
//       itemBuilder: (BuildContext context, int index) {
//
//         return Container(
//           height: 400,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage(postimages[index]),
//             ),
//           ),
//         );
//         //
//       },
//     );
//   }
// }



