import 'package:flutter/material.dart';
import 'package:job_opening/widgets/screen_links.dart';
import 'package:job_opening/widgets/listtile_decolated.dart';
import 'package:job_opening/widgets/my_divider.dart';
import 'package:job_opening/widgets/rogo_k_opacity.dart';
import 'package:job_opening/widgets/share_buttons.dart';
import 'package:job_opening/widgets/text_and_icons_incard.dart';

class AntiGangstaScreen extends StatelessWidget {
  const AntiGangstaScreen({Key? key}) : super(key: key);

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
                    "assets/images/gang4.png",
                  ),
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "",
                  prSubLine: "",
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
                          text: "暴力団等反社会的勢力に対する基本方針",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              "株式会社平和観光は一般乗用旅客自動車運送業としての社会的責任を果たすべく、埼玉県、東京都暴力団排除条例及び関係法令を遵守し次の事項を基本方針として、暴力団、暴力団構成員、準構成員、暴力団関係企業、総会屋、社会運動標ぼうゴロ、政治活動標ぼうゴロ、特殊知能暴力集団その他の暴力、威力と詐欺的手法を駆使して経済的利益を追求する集団または個人の排除に取り組みます。",
                          style: TextStyle(color: Colors.black)),
                      const TextSpan(
                          text: "当社は、暴力団等反社会的勢力とは、商取引関係を含めた一切の関係を遮断します。",
                          style: TextStyle(color: Colors.black)),
                      const TextSpan(
                          text:
                              "当社は、暴力団等反社会的勢力による不当要求に対し、従業員の安全確保に配慮しつつ組織として対応し、迅速な問題解決に努めます。",
                          style: TextStyle(color: Colors.black)),
                      const TextSpan(
                          text: "当社は、暴力団等反社会的勢力による不当要求を断固拒絶します。",
                          style: TextStyle(color: Colors.black)),
                      const TextSpan(
                          text:
                              "当社は、暴力団等反社会的勢力による不当要求に対しては、民事及び刑事の両面から法的対抗措置を講じるなど、断固たる態度で対応します。",
                          style: TextStyle(color: Colors.black)),
                      const TextSpan(
                          text: "当社は、暴力団等反社会的勢力に対して資金提供は一切行いません。",
                          style: TextStyle(color: Colors.black)),
                      const TextSpan(
                          text:
                              "当社は、警察、暴力追放運動推進センター、弁護士等の外部専門機関と連携して、暴力団等の反社会的勢力の排除に取り組みます。",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text:
                            "上記の宣言により、「暴力団等反社会的勢力」との関わりが認められた場合は一切の契約の解除と損害賠償の請求をさせて頂きます。",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                    // ここに分岐を入れる
                    screen: 'anti_gangsta_screen',
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
