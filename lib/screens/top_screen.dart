import 'package:flutter/material.dart';
import 'package:job_opening/widgets/screen_links.dart';
import 'package:job_opening/widgets/listtile_decolated.dart';
import 'package:job_opening/widgets/my_divider.dart';
import 'package:job_opening/widgets/rogo_k_opacity.dart';
import 'package:job_opening/widgets/share_buttons.dart';
import 'package:job_opening/widgets/text_and_icons_incard.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1023,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Card(
            color: const Color.fromRGBO(250, 250, 250, 1),
            margin: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 12,
              bottom: 12,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            elevation: 4.0,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(
                    "assets/images/top1.png",
                  ),
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "急な家庭都合の遅出・早退・欠勤にも対応",
                  prSubLine: "人生長いし、そんなこともあります",
                  starColor1: Colors.amber,
                  starColor2: Colors.amber,
                  starColor3: Colors.amber,
                  starColor4: Colors.amber,
                  starColor5: Colors.amber,
                  borderColor: Colors.amber,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "選べる勤務時間",
                  prSubLine: "日勤、夜勤、隔勤でも",
                  starColor1: Colors.amber,
                  starColor2: Colors.amber,
                  starColor3: Colors.amber,
                  starColor4: Colors.amber,
                  starColor5: Colors.amber,
                  borderColor: Colors.amber,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "外国籍の人も歓迎",
                  prSubLine: "経験豊富な先輩たちがサポート",
                  starColor1: Colors.amber,
                  starColor2: Colors.amber,
                  starColor3: Colors.amber,
                  starColor4: Colors.amber,
                  starColor5: Colors.amber,
                  borderColor: Colors.amber,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "未経験は当社で２種免取得",
                  prSubLine: "10日くらいで取得、難しくないです",
                  starColor1: Color.fromRGBO(255, 193, 7, 1),
                  starColor2: Colors.amber,
                  starColor3: Colors.amber,
                  starColor4: Colors.amber,
                  starColor5: Colors.amber,
                  borderColor: Colors.amber,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "寮完備で即入居OK",
                  prSubLine: "会社から近いのが嬉しい",
                  starColor1: Colors.amber,
                  starColor2: Colors.amber,
                  starColor3: Colors.amber,
                  starColor4: Colors.amber,
                  starColor5: Colors.amber,
                  borderColor: Colors.amber,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "従業員食堂完備(日本料理 あい吉)",
                  prSubLine: "従業員価格で食べれます",
                  starColor1: Colors.amber,
                  starColor2: Colors.amber,
                  starColor3: Colors.amber,
                  starColor4: Colors.amber,
                  starColor5: Colors.amber,
                  borderColor: Colors.amber,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "嬉しい入社祝い金",
                  prSubLine: "新生活の準備に",
                  starColor1: Colors.amber,
                  starColor2: Colors.amber,
                  starColor3: Colors.amber,
                  starColor4: Colors.amber,
                  starColor5: Colors.amber,
                  borderColor: Colors.amber,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "好みのライフスタイルでOK",
                  prSubLine: "自分のペースで働けます",
                  starColor1: Colors.amber,
                  starColor2: Colors.amber,
                  starColor3: Colors.amber,
                  starColor4: Colors.amber,
                  starColor5: Colors.amber,
                  borderColor: Colors.amber,
                  borderWidth: 0.0,
                ),
                const MyDivider(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextAndIconsInCard(
                    lines: [
                      const TextSpan(
                          text:
                              "株式会社 平和観光は埼玉県で初めてCOVIT-19(新型コロナウィルス)の患者搬送業務を始めたタクシー・ハイヤーの会社です",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text:
                            "平和観光の良いところは、ズバリ！個人を尊重する自由な社風と人情を大切にするタクシー会社です。なので、キッチリカッチリが良い人には少々不向きかもです、むしろ、遊びは豪快に！仕事はガッツリ！でも、でも、ちょっと頑張りすぎたから今日は休みたい、、、という少し緩い人が向いてるかもしれません。人間は完璧ではないし、ロボットではありません、人生は長いので自分のペースで頑張れる、そんな人を平和観光は応援します。",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                    screen: 'top_screen',
                  ),
                ),
                const ScreenLinks(),
                const ShareButtons(
                    url: "https://www.taxi-saitama.com",
                    text: "さいたま市で自由な社風でタクシーをやるならココ→"),
              ],
            ),
          ),
          const MyOpacityRogoK(),
        ],
      ),
    );
  }
}
