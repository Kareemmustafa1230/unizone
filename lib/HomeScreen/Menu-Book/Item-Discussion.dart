import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Home/ShowAddTaskBottom.dart';
import 'Comments/Comments.dart';
import 'Likes/Likes.dart';

class ItemDiscussion extends StatefulWidget {
  const ItemDiscussion({Key? key}) : super(key: key);
  static const String routeName = 'Item-Discussion';

  @override
  _ItemDiscussionState createState() => _ItemDiscussionState();
}

class _ItemDiscussionState extends State<ItemDiscussion> {
  final String? postImage = 'assets/images/Secure data-pana 1.png';
  bool isLiked = false;
  int likesCount = 102;
  playSound(){
    final player = AudioPlayer();
    player.play(AssetSource('assets/sounds/Ramy Gamal - جيت متأخر.mp3'));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Ellipse 1821@3x.png'),
                        radius: 23,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kareem Mustafa',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF000000),),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '2h',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF95989A),),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 18,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE6F6FC),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: const Text(
                            'Admin',
                            style: TextStyle(fontSize: 10, color: Color(0xFF95989A), fontWeight: FontWeight.w600,),
                          ),
                        ),
                      ),
                      const SizedBox(width: 100),
                      InkWell(
                        onTap: (){
                          ShowTaskAddBottomSheet(context);
                        },
                        child: Container(
                          height: 15,
                          width: 30,
                          alignment: Alignment.topLeft,
                          child: const Icon(Icons.more_horiz, color: Colors.grey, size: 21,),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // ReadMoreText widget goes here
                const SizedBox(height: 8),
                if (postImage != null && postImage!.isNotEmpty)
                  Image.asset(postImage!),
                const Padding(
                  padding: EdgeInsets.only(right: 7, left: 7),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 50),
                    LikeButton(
                      size: 30,
                      likeCount: likesCount,
                      bubblesColor: const BubblesColor(dotPrimaryColor: Colors.blue, dotSecondaryColor: Colors.blue),
                      circleColor: const CircleColor(start: Colors.blue, end: Colors.blue),
                      countPostion: CountPostion.right,
                      likeBuilder: (isLiked) {
                        return FaIcon(
                          FontAwesomeIcons.thumbsUp,
                          color: isLiked ? Colors.blue : const Color(0xFF95989A),
                          size: 30,
                        );
                      },
                      onTap: (isLiked) {
                        playSound();
                        return Future.value(!isLiked);
                      },
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(Likes.routeName);
                      },
                      child: const Text('Likes',
                        style:  TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xFF95989A),
                        ),
                      ),
                    ),
                    const SizedBox(width: 65),
                    const FaIcon(FontAwesomeIcons.comment, color: Color(0xFF95989A), size: 30),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(Comments.routeName);
                      },
                      child: const Text('23  Comments',
                        style: TextStyle(
                            color: Color(0xFF95989A),
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ShowTaskAddBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => const ShowAddTaskBottom()
    );
  }

}
