import 'package:flutter/material.dart';
import 'package:job_opening/widgets/screen_links.dart';
import 'package:job_opening/widgets/google_map_of_heiwakankou.dart';
import 'package:job_opening/widgets/listtile_decolated.dart';
import 'package:job_opening/widgets/my_divider.dart';
import 'package:job_opening/widgets/rogo_k_opacity.dart';
import 'package:job_opening/widgets/share_buttons.dart';
import 'package:job_opening/widgets/text_and_icons_incard.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
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
                    "assets/images/company1.png",
                  ),
                ),
                const ListDecolated(
                  prIcon: Icons.trending_up,
                  prLine: "24時間配車受付!",
                  prSubLine: "地域密着タクシー",
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
                  prLine: "迎車料金無料！",
                  prSubLine: "だから予約が多い",
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
                  prLine: "ハイヤーもあります",
                  prSubLine: "アルファード、ハイエース、グランエースなどなど",
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
                  prLine: "早朝予約もOK",
                  prSubLine: "24時間営業だからこその強み",
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
                  child: const TextAndIconsInCard(
                    lines: [
                      TextSpan(
                          text: "平和観光のタクシーは24時間配車受付、地域密着、だから固定客が圧倒的に多い",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "親切で丁寧、さいたま市桜区をメインとした地域に精通している運転手が予約時間や場所に正確に到着し、清潔な車両で快適な乗車体験を提供します。",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "株式会社 平和観光",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "〒338-0815 埼玉県さいたま市桜区五関335-1",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "048-755-9302",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "代表取締役 成川 勇一",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "設立 平成14年1月",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "資本金 1,000万円",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "従業員 80名",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "適格請求書発行事業者登録番号 T4030001096675",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text:
                            "事業内容:【一般乗用旅客自動車運送事業】関自旅二第544号さいたま市内を中心とするタクシー事業(台数68台)首都圏を中心とした全国の貸切バス・ジャンボタクシー・ハイヤーの手配各種団体旅行等の仲介手配",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromRGBO(11, 23, 41, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                    screen: 'company_screen',
                  ),
                ),
                const ScreenLinks(),
                const ShareButtons(
                    url: "https://www.taxi-saitama.com",
                    text: "さいたま市で自由な社風でタクシーをやるならココ→"),
                const MyDivider(),
                Container(
                  padding: const EdgeInsets.only(
                    right: 12,
                    left: 12,
                    top: 0,
                    bottom: 12,
                  ),
                  child: const SizedBox(
                    width: 1023,
                    height: 488,
                    child: GoggleMapOfHeiwaKanko(), //googleMapの表示
                  ),
                ),
              ],
            ),
          ),
          const MyOpacityRogoK(),
        ],
      ),
    );
  }
}
