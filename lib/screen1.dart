import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen1 extends StatelessWidget {

  final String s1='我出生在一個很平凡但很美滿的小家庭，父親是個公務員，'
                  '在台電服務，母親是個家庭主婦，而弟弟和我都還在學校求學。'
                  '父母用民主的方式管教我們，希望我們能夠獨立自主、主動學習，'
                  '累積人生經驗，但他們會適時的給予鼓勵和建議，父母親只對'
                  '我們要求兩件事，第一是保持健康，第二是著重課業。因為沒有'
                  '健康的身體，就算有再多的才華、再大的抱負也無法發揮出來。'
                  '又因為家境並不富裕，所以必須專心於課業上，學得一技之長'
                  '，將來才能自立更生。除了課業之外，其他方面我也沒有偏廢。'
                  '在高一時加入學校管樂隊，吹奏低音號，每天升旗參加出勤，在'
                  '這裡不但使我對管樂器有進一步的認識，還認識了許多朋友，因此'
                  '在那個時候，參加社團已成為我放學後的一大休閒。而我最喜歡的'
                  '運動是棒球，我常在電視上或球場上觀賞職棒比賽，欣賞球員的美姿'
                  '，模仿其動作。我常利用課餘時間約同學一起出外打球，記得'
                  '在高二時，班上組隊參加班際壘球賽，那時我擔任隊長，防守二壘，'
                  '首先展開攻勢，激起球隊士氣，最後終以一分之差贏得了最後勝利。'
                  '除了棒球之外，我也很喜歡藍球、排球等，因此使得原本瘦弱的身體'
                   '，變得強壯許多。';

  @override
  Widget build(BuildContext context) {

    final player=AudioPlayer();
    player.play(AssetSource("assets/Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Text("Who am I",
                              style: TextStyle(fontSize:24,
                                               fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Colors.amberAccent,
                                               offset: Offset(6, 6)),
                        ],),
            child:Text(s1,
                       style: TextStyle(fontSize: 20),),
            ),

           Container(
             color: Colors.redAccent,
             child: Image.asset('images/f1.jpg'),
             height: 200,
             width: 200,
           ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                            image: AssetImage('images/f1.jpg'),
                            fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
