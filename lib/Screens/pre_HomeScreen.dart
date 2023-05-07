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
    // "assets/images/",
  ];



  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              child: StoryContents(postimages: postimages)),
          Flexible(
              child: PostContents(postimages: postimages)),
        ],
      ),

    );
  }
}

class StoryContents extends StatelessWidget{
  const  StoryContents({
    Key? key,
    required this.postimages,
  }) : super(key: key);

  final List<String> postimages;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 50,
      scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index){
          return Row(
            children: [
              CircleAvatar(
                backgroundImage:
                NetworkImage('https://tshop.r10s.jp/sanrio/cabinet/item2210/n-2210-491772_1.jpg?fitin=720%3A720'),
              ),
            ],
          );
        }
    );
  }
}

class PostContents extends StatelessWidget {
  const  PostContents({
    Key? key,
    required this.postimages,
  }) : super(key: key);

  final List<String> postimages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (postimages.length),
      itemBuilder: (BuildContext context, int index) {

        return Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(postimages[index]),
            ),
          ),
        );
        //
      },
    );
  }
}



