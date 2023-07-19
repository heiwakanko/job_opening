import 'package:flutter/material.dart';
import 'package:job_opening/widgets/screen_links.dart';
import 'package:job_opening/widgets/listtile_decolated.dart';
import 'package:job_opening/widgets/my_divider.dart';
import 'package:job_opening/widgets/rogo_k_opacity.dart';
import 'package:job_opening/widgets/share_buttons.dart';
import 'package:job_opening/widgets/text_and_icons_incard.dart';

class HireScreen extends StatelessWidget {
  const HireScreen({Key? key}) : super(key: key);

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
                    "assets/images/entry5.png",
                  ),
                ),
                const ListDecolated(
                  prIcon: Icons.trending_down,
                  prLine: "お酒にだらしない人",
                  prSubLine: "節度ある呑み方を！",
                  starColor1: Colors.amber,
                  starColor2: Colors.grey,
                  starColor3: Colors.grey,
                  starColor4: Colors.grey,
                  starColor5: Colors.grey,
                  borderColor: Colors.grey,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_down,
                  prLine: "お金にだらしない人",
                  prSubLine: "節度ある金銭感覚を！",
                  starColor1: Colors.amber,
                  starColor2: Colors.grey,
                  starColor3: Colors.grey,
                  starColor4: Colors.grey,
                  starColor5: Colors.grey,
                  borderColor: Colors.grey,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_down,
                  prLine: "いつの間にか消えちゃう人",
                  prSubLine: "先ずは相談！",
                  starColor1: Colors.grey,
                  starColor2: Colors.grey,
                  starColor3: Colors.grey,
                  starColor4: Colors.grey,
                  starColor5: Colors.grey,
                  borderColor: Colors.grey,
                  borderWidth: 0.0,
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "出戻り率が高い！",
                  prSubLine: "色々巡ってみたら、やっぱり居心地が良いのです",
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
                              "(株)平和観光のタクシー運転手として応募される方へ(応募条件: 第一種普通免許取得から１年以上経過であれば、年齢、前職、国籍などは不問です)",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              "とはいえ、人間は完璧ではありません。人はそれぞれ長所があれば短所もあります。なので、ぜひ、それ以上の貴方の持っている良いところを面接で教えてください。未経験でも全く心配ありません、経験豊かな先輩たちが教えてくれます。弊社のドライバーさんたちは年齢も様々、前職歴も様々、国籍も様々、勤務スタイルも様々です。人生長いので自分に合ったスタイルを見つけてください。寮も完備、食堂も完備、入社祝い金もあります。ぜひ、(株)平和観光のタクシードライバー求人にご応募ください。\n\n弊社の運行エリアは'埼玉県A地区県南中央交通圏'(川口市, さいたま市, 鴻巣市, 上尾市, 蕨市, 戸田市, 桶川市, 北本市及び北足立郡伊奈町)になります",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text:
                            "面接の応募は電話予約になります(9:00~17:00)、履歴書に写真貼付けのうえ、免許証持参でお越しください。弊社は書類審査はありません、社長が一人一人、直接、顔を見て話し、膝と膝を突き合わせて行われた上で採否を決定いたします。",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                    screen: 'hire_screen',
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
