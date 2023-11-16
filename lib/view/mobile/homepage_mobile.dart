import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitaktestui/model/getx_controller.dart';
import 'package:jiitaktestui/view-model/homePageListData.dart';
import 'package:jiitaktestui/view-model/text.dart';
import 'package:jiitaktestui/view/mobile/edit_store_profile_mobile.dart';
import 'package:jiitaktestui/view/mobile/stamp_card_details_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final Controller controller = Get.put(Controller());

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
//---------------------------------------------------FloatingActionButton--------------------------------------------------------//          
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: const CircleBorder(),
              child: Container(
                  width: 52,
                  height: 52,
                  decoration: const ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.76, 0.65),
                      end: Alignment(-0.76, -0.65),
                      colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
                    ),
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFECA726)),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3FFAAA14),
                        blurRadius: 25,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Image.asset(
                    "assets/scan-line (1).png",
                    scale: 4,
                  )),
              onPressed: () {}),
//--------------------------------------------------------------BottomNavigationBar---------------------------------------------------------------//              
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentIndex.value,
              selectedItemColor: const Color(0xFFFAAA14),
              selectedLabelStyle: const TextStyle(
                color: Color(0xFF303030),
                fontSize: 11,
                fontFamily: 'Noto Sans JP',
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontFamily: 'Noto Sans JP',
                fontWeight: FontWeight.w500,
              ),
              items: [
                BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/search.png",
                        color: controller.currentIndex.value == 0
                            ? const Color(0xFFFAAA14)
                            : Colors.black,
                        scale: 4,
                      ),
                    ),
                    label: "さがす"),
                BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {
                        Get.to(
                            const SecondPage()); //     Here navigating to the secondpage  ///
                      },
                      child: Image.asset(
                        "assets/office bag.png",
                        color: controller.currentIndex.value == 1
                            ? const Color(0xFFFAAA14)
                            : Colors.black,
                        scale: 4,
                      ),
                    ),
                    label: "お仕事"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/typing.png",
                      color: controller.currentIndex.value == 2
                          ? const Color(0xFFFAAA14)
                          : Colors.black,
                      scale: 4,
                    ),
                    label: "チャット"),
                BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Get.to(const ThirdPage());//---------Here Navigating to Thirdpage--------//
                    },
                    child: Image.asset(
                      "assets/account.png",
                      color: controller.currentIndex.value == 3
                          ? const Color(0xFFFAAA14)
                          : Colors.black,
                      scale: 4,
                    ),
                  ),
                  label: "マイページ",
                ),
              ],
              onTap: (index) {
                controller.currentIndex.value = index;
              },
            ),
          ),
//----------------------------------------------------------AppBar-------------------------------------------------------------------------//          
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: searchBar(context),
            actions: [
              SizedBox(
                width: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/Filter_icon.png",
                      scale: 5,
                    ),
                    Image.asset(
                      "assets/Vector.png",
                      scale: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
//-------------------------------------------body------------------------------------------------------------------------------------------//          
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: height * 0.036,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.77, 0.64),
                    end: Alignment(-0.77, -0.64),
                    colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
                  ),
                ),
                child: const Center(
                  child: Text(
                    '2022年 5月 26日 (木）',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF303030),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
 //-------------------------------------------------------here the date picker -------------------------------------//             
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: days.length,
                  itemBuilder: (context, index) {
                    return Obx(() => GestureDetector(
                          onTap: () {
                            controller.selectedIndex.value = index;
                          },
                          child: Container(
                              margin: const EdgeInsets.all(5),
                              width: 48,
                              height: 50,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                color: index == controller.selectedIndex.value
                                    ? const Color(0xFFFAAA14)
                                    : const Color.fromARGB(255, 245, 244, 243),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [daynames[index], days[index]],
                              )),
                        ));
                  },
                ),
              ),
 //-------------------------------------------------------------listView for the container-----------------------------------------------------------//            
              Expanded(
                child: ListView.builder(
                  itemCount: immages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      height: 360,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x26889FBB),
                              blurRadius: 25,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ]),
                      child: Column(children: [
                        Container(
                          width: double.infinity,
                          height: 186,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: immages[index],
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
                        SizedBox(
                          width: 300,
                          height: 174,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                  width: 293, child: mobileFirstText[index]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 130,
                                    height: 25,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 2),
                                    decoration: ShapeDecoration(
                                      color: const Color(0x19EEAB40),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                    ),
                                    child: SizedBox(
                                        width: 110,
                                        height: 11,
                                        child: molibleSecondText[index]),
                                  ),
                                  SizedBox(child: mobilePrice[index])
                                ],
                              ),
                              SizedBox(child: mobilethirdText[index]),
                              SizedBox(child: mobileFourthText[index]),
                              SizedBox(child: mobileFifthText[index]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(child: mobileSixthText[index]),
                                  SizedBox(
                                      child: Obx(
                                    () => InkWell(
                                      onTap: () {
                                        controller.likedStatuses[index].value =
                                            !controller
                                                .likedStatuses[index].value;
                                      },
                                      child: Icon(
                                        Icons.favorite_border_rounded,
                                        color: controller
                                                .likedStatuses[index].value
                                            ? Colors.red
                                            : const Color(0x59303030),
                                        size: 25,
                                      ),
                                    ),
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//----------------------------------------------------------AppBar search bar Widget--------------------------------------------------//
Widget searchBar(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width*0.8,
    height: MediaQuery.of(context).size.height*0.045,
    child: TextFormField(
        showCursor: false,
        onChanged: (value) {},
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 235, 234, 234),
          hintText: "'北海道, 札幌市'",
          hintStyle: TextStyle(
            color: Color(0xFF303030),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                  style: BorderStyle.none,
                  strokeAlign: 0),
              borderRadius: BorderRadius.all(Radius.circular(16.50))),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.transparent,
                width: 0,
                style: BorderStyle.none,
                strokeAlign: 0),
            borderRadius: BorderRadius.all(Radius.circular(16.50)),
          ),
        )),
  );
}

