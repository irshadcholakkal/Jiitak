import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitaktestui/view-model/edit_store_profile_mobile.dart';
import 'package:jiitaktestui/model/getx_controller.dart';
import 'package:jiitaktestui/view-model/text.dart';
import 'package:badges/badges.dart' as badges;

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

final Controller controller = Get.put(Controller());

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    final heigt = MediaQuery.of(context).size.height;
    final widt = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
//------------------------------------------AppBar-----------------------------------------------------//
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent.withOpacity(0.05),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 15,
                  color: Color(0xFFB7B7B7),
                )),
          ),
        ),
        title: const Center(
          child: Text(
            '店舗プロフィール編集',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF4B4948),
              fontSize: 15,
              fontFamily: 'Noto Sans JP',
              fontWeight: FontWeight.w500,
              letterSpacing: -0.24,
            ),
          ),
        ),
        actions: [
          badges.Badge(
            badgeContent: const Text(
              "99+",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 6.95,
                fontFamily: 'Noto Sans JP',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            position: badges.BadgePosition.topEnd(top: 8.5, end: 3),
            badgeStyle: const badges.BadgeStyle(
                shape: badges.BadgeShape.circle, badgeColor: Color(0xFFEE7D42)),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/notifications_none 1.png",
                  scale: 4,
                )),
          )
        ],
      ),
//-------------------------------------------------------Body----------------------------------------------------------//
      body: Container(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
        height: heigt,
        width: widt,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//----------------------------------------------------FirstFourTextField---------------------------------------------------//
              SizedBox(
                height: heigt * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    dataAndTextfield(
                        data: '店舗名',
                        hinttext: 'Mer キッチン',
                        height: heigt * 0.055,
                        width: widt,
                        size: 14.00),
                    dataAndTextfield(
                        data: '代表担当者名',
                        hinttext: '林田　絵梨花',
                        height: heigt * 0.055,
                        width: widt,
                        size: 14.00),
                    dataAndTextfield(
                        data: '店舗電話番号',
                        hinttext: '123 - 4567 8910',
                        height: heigt * 0.055,
                        width: widt,
                        size: 14.00),
                    dataAndTextfield(
                        data: '店舗住所',
                        hinttext: '大分県豊後高田市払田791-13',
                        height: heigt * 0.055,
                        width: widt,
                        size: 14.0)
                  ],
                ),
              ),
//-------------------------------------------------------MAPimage---------------------------------------------------------------//              
              Container(
                width: widt,
                height: heigt * 0.27,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/map.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3FC3C3C3),
                      blurRadius: 15,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
//------------------------------------------------SubHeadingsAndOtherimages---------------------------------------------------------//
              SizedBox(
                height: heigt * 0.01,
              ),
 //------------------------------------------------------FirstRowImages------------------------------------------------------------------------//             
              subHeadings(data1: '店舗外観', data2: '（最大3枚まで）', size: 14.0),
              SizedBox(
                width: widt,
                height: heigt * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: firstrow.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: widt * 0.3,
                        height: heigt * 0.16,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: firstrow[index],
                            fit: BoxFit.fill,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
//------------------------------------------------------SecondRowImages------------------------------------------------------------------------//             

              subHeadings(
                  data1: "店舗内観", data2: '（1枚〜3枚ずつ追加してください）', size: 14.0),
              SizedBox(
                width: widt,
                height: heigt * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: secondrow.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: widt * 0.3,
                        height: heigt * 0.16,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: secondrow[index],
                            fit: BoxFit.fill,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
 //------------------------------------------------------ThirdRowImages------------------------------------------------------------------------//             

              subHeadings(
                  data1: '料理写真', data2: '（1枚〜3枚ずつ追加してください）', size: 14.0),
              SizedBox(
                width: widt,
                height: heigt * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: thirdrow.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: widt * 0.3,
                        height: heigt * 0.16,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: thirdrow[index],
                            fit: BoxFit.fill,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
  //------------------------------------------------------ForthRowImages------------------------------------------------------------------------//             
             
              subHeadings(
                  data1: 'メニュー写真', data2: '（1枚〜3枚ずつ追加してください）', size: 14.0),
              SizedBox(
                width: widt,
                height: heigt * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fourthrow.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: widt * 0.3,
                        height: heigt * 0.16,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: fourthrow[index],
                            fit: BoxFit.fill,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: heigt * 0.01,
              ),
//-----------------------------------------------OtherSubHeadingsAndRowImages----------------------------------//              
              subSubHeadings(data: '営業時間', size: 14.0),
              SizedBox(
                height: heigt * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dropdownButton(
                      data: controller.dropdownvalue1.value, itemsdata: items1),
                  divider(20.0),
                  dropdownButton(
                      data: controller.dropdownvalue2.value, itemsdata: items2),
                ],
              ),
              SizedBox(
                height: heigt * 0.01,
              ),
              subSubHeadings(data: 'ランチ時間', size: 14.0),
              SizedBox(
                height: heigt * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dropdownButton(
                      data: controller.dropdownvalue3.value, itemsdata: items3),
                  divider(20.0),
                  dropdownButton(
                      data: controller.dropdownvalue4.value, itemsdata: items4),
                ],
              ),
              SizedBox(
                height: heigt * 0.01,
              ),
              subSubHeadings(data: "定休日", size: 14.0),
              SizedBox(
                height: heigt * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Obx(() => checkBox(
                      data: "月",
                      isChecked: controller.isChecked1.value,
                      onTapCallback: () {
                        controller.isChecked1.value =
                            !controller.isChecked1.value;
                      })),
                  Obx(() => checkBox(
                      data: "火",
                      isChecked: controller.isChecked2.value,
                      onTapCallback: () {
                        controller.isChecked2.value =
                            !controller.isChecked2.value;
                      })),
                  Obx(() => checkBox(
                      data: "水",
                      isChecked: controller.isChecked3.value,
                      onTapCallback: () {
                        controller.isChecked3.value =
                            !controller.isChecked3.value;
                      })),
                  Obx(() => checkBox(
                      data: "木",
                      isChecked: controller.isChecked4.value,
                      onTapCallback: () {
                        controller.isChecked4.value =
                            !controller.isChecked4.value;
                      })),
                ],
              ),
              SizedBox(
                height: heigt * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Obx(() => checkBox(
                      data: "金",
                      isChecked: controller.isChecked5.value,
                      onTapCallback: () {
                        controller.isChecked5.value =
                            !controller.isChecked5.value;
                      })),
                  Obx(() => checkBox(
                      data: "土",
                      isChecked: controller.isChecked6.value,
                      onTapCallback: () {
                        controller.isChecked6.value =
                            !controller.isChecked6.value;
                      })),
                  Obx(() => checkBox(
                      data: "日",
                      isChecked: controller.isChecked7.value,
                      onTapCallback: () {
                        controller.isChecked7.value =
                            !controller.isChecked7.value;
                      })),
                  Obx(() => checkBox(
                      data: "祝",
                      isChecked: controller.isChecked8.value,
                      onTapCallback: () {
                        controller.isChecked8.value =
                            !controller.isChecked8.value;
                      })),
                ],
              ),
              SizedBox(
                height: heigt * 0.01,
              ),
              subSubHeadings(data: "料理カテゴリー", size: 14.0),
              SizedBox(
                height: heigt * 0.01,
              ),
              dropdownButton2(
                  data: controller.dropdownvalue5.value,
                  itemsdata: items5,
                  height: 38.0,
                  width: 220.0,
                  padding: 15.0,
                  size: 16.0),
              SizedBox(
                height: heigt * 0.01,
              ),
              subSubHeadings(data: "'予算'", size: 14.0),
              SizedBox(
                height: heigt * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextfiled(
                      hinttext: '¥ 1,000',
                      height: heigt * 0.050,
                      width: widt * 0.37),
                  divider(20.0),
                  customTextfiled(
                      height: heigt * 0.050,
                      width: widt * 0.37,
                      hinttext: "¥ 2,000"),
                  SizedBox(
                    width: widt * 0.1,
                  )
                ],
              ),
              SizedBox(
                height: heigt * 0.01,
              ),
              dataAndTextfield(
                  data: "キャッチコピー",
                  hinttext: "美味しい！リーズナブルなオムライスランチ！",
                  height: heigt * 0.055,
                  width: widt,
                  size: 14.00),
              SizedBox(
                height: heigt * 0.01,
              ),
              dataAndTextfield(
                  data: '座席数',
                  hinttext: '40席',
                  height: heigt * 0.055,
                  width: widt,
                  size: 14.00),
              SizedBox(
                height: heigt * 0.02,
              ),
              subSubHeadings(data: "喫煙席", size: 14.0),
              SizedBox(
                height: heigt * 0.01,
              ),
              Row(
                children: [
                  Obx(() => checkBox(
                      data: "有",
                      isChecked: controller.isChecked9.value,
                      onTapCallback: () {
                        controller.isChecked9.value =
                            !controller.isChecked9.value;
                      })),
                  SizedBox(
                    width: widt * 0.1,
                  ),
                  Obx(() => checkBox(
                      data: "無",
                      isChecked: controller.isChecked10.value,
                      onTapCallback: () {
                        controller.isChecked10.value =
                            !controller.isChecked10.value;
                      })),
                ],
              ),
              SizedBox(
                height: heigt * 0.02,
              ),
              subSubHeadings(data: '駐車場', size: 14.0),
              SizedBox(
                height: heigt * 0.01,
              ),
              Row(
                children: [
                  Obx(() => checkBox(
                      data: "有",
                      isChecked: controller.isChecked11.value,
                      onTapCallback: () {
                        controller.isChecked11.value =
                            !controller.isChecked11.value;
                      })),
                  SizedBox(
                    width: widt * 0.1,
                  ),
                  Obx(() => checkBox(
                      data: "無",
                      isChecked: controller.isChecked12.value,
                      onTapCallback: () {
                        controller.isChecked12.value =
                            !controller.isChecked12.value;
                      })),
                ],
              ),
              SizedBox(
                height: heigt * 0.02,
              ),
              subSubHeadings(data: '来店プレゼン,size:14.0ト'),
              SizedBox(
                height: heigt * 0.01,
              ),
              Row(
                children: [
                  Obx(() => checkBox(
                      data: "有（最大３枚まで）",
                      isChecked: controller.isChecked13.value,
                      onTapCallback: () {
                        controller.isChecked13.value =
                            !controller.isChecked13.value;
                      })),
                  SizedBox(
                    width: widt * 0.1,
                  ),
                  Obx(() => checkBox(
                      data: "有",
                      isChecked: controller.isChecked14.value,
                      onTapCallback: () {
                        controller.isChecked14.value =
                            !controller.isChecked14.value;
                      })),
                ],
              ),
              SizedBox(
                height: heigt * 0.02,
              ),
              SizedBox(
                width: widt,
                height: heigt * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fifthrow.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: widt * 0.3,
                        height: heigt * 0.16,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: fifthrow[index],
                            fit: BoxFit.fill,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: heigt * 0.02,
              ),
              dataAndTextfield(
                  data: "来店プレゼント名",
                  hinttext: "いちごクリームアイスクリーム, ジュース",
                  height: heigt * 0.055,
                  width: widt,
                  size: 14.00),
              SizedBox(
                height: heigt * 0.03,
              ),
              Opacity(
                opacity: 0.50,
                child: Container(
                  width: widt,
                  height: heigt * 0.046,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(1.00, 0.04),
                      end: Alignment(-1, -0.04),
                      colors: [Color(0xFFEE7D42), Color(0xFFFFC7AB)],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FEE7D42),
                        blurRadius: 15,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '編集を保存',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: heigt * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
