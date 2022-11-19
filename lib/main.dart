import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.face),
                                    label: 'Who am I',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.date_range),
                                    label: '學習歷程',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.view_list),
                                    label: '大學歷程',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: '專案方向',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我出生在一個很普通但很美好的家庭，父親是個家庭主夫，'
      '在台電服務，母親是個公務員，而妹妹和我都還在學校求學。'
      '父母用開明的方式教導我們，希望我們能夠獨立自主、主動學習，'
      '累積人生經驗，但他們會適時的給予鼓勵和建議，父母親只對'
      '我們要求一件事，就是保持身體健康。因為沒有'
      '健康的身體，死了就什麼都沒了。'
      '除了課業之外，其他方面我也沒有偏廢。'
      '在大一時加入吉他社，彈奏吉他，每天參加社課，'
      '不但使我對吉他有進一步的認識，還認識了一些朋友，因此'
      '在那個時候，參加社團已成為我放學後的一大休閒。而我最喜歡的'
      '運動是游泳，我常在電視上觀賞游泳比賽，欣賞參賽選手的美麗泳姿'
      '，模仿其動作。我常利用課餘時間約同學一起去游泳，記得'
      '在大二時，班上組隊參加游泳比賽，那時我擔任選手，游第一棒，'
      '首先展開攻勢，激起游泳隊士氣，最後終以0.01秒之差贏得了最後勝利。';

  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
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

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('images/f1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
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

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("學習歷程"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 560,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('每週的第一、二堂是自然科探究與實作課程。這門課程，我們實際'
                '進行操作的科學活動，也是我相當喜愛的一門課。'
                '課程中，老師先介紹實驗室及如何正確使用基本儀器，另外，須了'
                '解信度及效度的數據概念。然後開始進行橡皮筋、吹泡泡、蠟燭燃燒、'
                '酵素研究等主題，每個主題進行中，老師會透過適當的提問和實作活動'
                '，讓我釐清許多疑惑；而實作過程中，我可以發現其他問題，從眾多的'
                '變因中選擇一個變因，討論出可以驗證的觀點，其後在小組內討論小結'
                '，並寫出一份海報，上台分享。'
                '每次課程結束，回到家的第一件事，便是回顧今天的上課實作，將'
                '課程中實作數據及操作心得寫在筆記內，記錄一天的發現及所學。'
                '進行橡皮筋實作時，雖然每條橡皮筋外觀看起來一樣，但是彈性還'
                '是有差異，為避免影響數據準確性，盡可能將同組數據在同一條橡皮筋'
                '完成；進行吹泡泡實作時，因為泡泡壽命的影響，所以量測的動作要很'
                '迅速確實，因為泡泡很小，相對量測之數據誤差值也較大。'
                '進行蠟燭燃燒實作時，因為燃燒完全跟燃燒不完全，產生的氣體特'
                '性不同，因為無法測試一氧化碳產生量，造成實驗時產生不同數據現象'
                '；進行酵素研究實作時，因為無法確實讓溫度恆溫，靠外在水體的保溫'
                '2 學習過程、反思與心得'
                '效果，還是無法精確地讓個不同實驗溫度抱持定值，也因此，實驗數據'
                '會有些微誤差產生。'
                '經由四個主題的實作，我可以發現問題，透過實作記錄資料數據，'
                '將資料數據以圖表製作並整理出規則性，完成分析的結果。過程中不乏'
                '小組討論，而討論中不免出現許多不同的意見和想法，在經過多次交流'
                '，因而獲得了暫時性的結論。而製作海報或是簡報過程中，往往因為時'
                '間的緊迫或是組員個人因素，使得海報或是簡報的製作過程更是雪上加'
                '霜，在這其中，我們一項一項突破困難，完成不可能的任務。'
                '簡報任務完成後，接下來就必須專心的聆聽其他各組的報告，才能'
                '經由簡報發現其他組的實驗與自己組別的實驗結果的異同，並適時的修'
                '正自己的實作報告。'
                '另外，課程是以分組方式進行，小組成員的組成有時 是老師隨機'
                '指派，每位同學的學習狀況都不一樣，這考驗著我們必須花費更多的時間'
                '和更大的力氣，去面對不同個性組成的團隊，也因此，藉著這門課程我'
                '們除了提升了高層次的思考及批判能力，並加強了團隊合作能力喔！'),

                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 100,
                    width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 學好日文'),
                      Text('2. JAVA'),
                      Text('3. 考駕照'),
                      Text('4. 交到女朋友'),
                    ],
                  ),
                ),
              ],),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期"),],),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學好英文'),
                    Text('2. 運動'),
                    Text('3. ALL PASS'),
                    Text('4. 交到女朋友'),
                  ],
                ),
              ),
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大三時期"),],),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 做好專題'),
                    Text('2. 考取日文證照'),
                    Text('3. ALL PASS'),
                    Text('4. 交到女朋友'),
                  ],
                ),
              ),
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大四時期"),],),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學好英文'),
                    Text('2. 組合語言'),
                    Text('3. ALL PASS'),
                    Text('4. 交到女朋友'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("專案方向"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1.定義範疇'),
                    Text('2.確定您的專案發起人'),
                    Text('3.確定可用資源'),
                    Text('4.檢查時程'),
                    Text('5.建立WBS'),
                    Text('6.切分成小步驟'),
                    Text('7.制定一個計劃草案'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}
