import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitaktestui/model/getx_controller.dart';
import 'package:jiitaktestui/view-model/homePageListData.dart';
import 'package:jiitaktestui/view-model/text.dart';
import 'package:jiitaktestui/view/tablet/edit_store_profile_tablet.dart';
import 'package:jiitaktestui/view/tablet/stamp_card_details_tablet.dart';

class HomePageTablet extends StatefulWidget {
  const HomePageTablet({super.key});

  @override
  State<HomePageTablet> createState() => _HomePageTabletState();
}

final Controller controller = Get.put(Controller());

class _HomePageTabletState extends State<HomePageTablet> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
 //---------------------------------------------------------------Floating Action Buttion--------------------------------------------------------------------//         
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: SizedBox(
            width: width*0.09,
            height: height*0.073,
            child: FloatingActionButton(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: const CircleBorder(),
                child: Container(
                    width:
                     width,
                    height:
                    height,
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
                      scale: 2,
                    )),
                onPressed: () {}),
          ),
//----------------------------------------------------------------BottomNavigationBar------------------------------------------------------------//              
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentIndex.value,
              selectedItemColor: const Color(0xFFFAAA14),
              selectedLabelStyle: const TextStyle(
                color: Color(0xFF303030),
                fontSize: 24,
                fontFamily: 'Noto Sans JP',
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Noto Sans JP',
                fontWeight: FontWeight.w500,
              ),
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/search.png",
                      color: controller.currentIndex.value == 0
                          ? const Color(0xFFFAAA14)
                          : Colors.black,
                      scale: 2.3,
                    ),
                    label: "さがす"),
                BottomNavigationBarItem(
                
                    icon: InkWell(
                      onTap: () {
                        Get.to(const SecondPageTablet());
                      },
                      child: SizedBox(
                        child: Image.asset(
                          "assets/office bag.png",
                          color: controller.currentIndex.value == 1
                              ? const Color(0xFFFAAA14)
                              : Colors.black,
                          scale: 2.3,
                        ),
                      ),
                    ),
                    label: "お仕事"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/typing.png",
                      color: controller.currentIndex.value == 2
                          ? const Color(0xFFFAAA14)
                          : Colors.black,
                      scale: 2.3,
                    ),
                    label: "チャット"),
                BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Get.to(const ThirdPageTablet());
                      
                    },
                    child: Image.asset(
                      "assets/account.png",
                      color: controller.currentIndex.value == 3
                          ? const Color(0xFFFAAA14)
                          : Colors.black,
                      scale: 2.3,
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
//-------------------------------------------------------AppBar-----------------------------------------------------------------//          
          appBar: AppBar(
            toolbarHeight: height*0.07,
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleSpacing: width*0.03,
            title: searchBar(context),
            actions: [
              SizedBox(
                width: width*0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/Filter_icon.png",
                      scale: 2.7,
                    ),
                    Image.asset(
                      "assets/Vector.png",
                      scale: 2.7,
                    ),
                  ],
                ),
              )
            ],
          ),
//------------------------------------------------------Body-----------------------------------------------------------------//          

          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: height*0.05,
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
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height*0.020,
              ),
//------------------------------------------Date row Builder-------------------------------------------------------------//
              SizedBox(
                height: height*0.12,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: days.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedIndex.value = index;
                        },
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            width: width*0.12,
                            height: height,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)),
                              color: index == controller.selectedIndex.value
                                  ? const Color(0xFFFAAA14)
                                  : const Color.fromARGB(255, 245, 244, 243),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [daynames[index], days[index]],
                            )),
                      ),
                    );
                  },
                ),
              ),

//------------------------------------------List view builder for main content------------------------------------------------------//
              Expanded(
                child: ListView.builder(
                  itemCount: immages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      height: height*0.85,
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
                          height: height*0.46,
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
                          width: width*0.96,
                          height: height*0.38,
                          child: Container(
                            margin: const EdgeInsets.only(top:15,bottom: 15,left: 30,right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                          
                                SizedBox(
                                    width: width / 2, child: tabFirstText[index]),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: width*0.13,
                                      height: height*0.025,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        color: const Color(0x19EEAB40),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                      ),
                                      child: SizedBox(
                                          width: width*0.2,
                                          height: height*0.01,
                                          child: Center(
                                              child: tabSecondText[index])),
                                    ),
                                    SizedBox(child: tabPrice[index])
                                  ],
                                ),
                                SizedBox(child: tabThirdText[index]),
                                SizedBox(child: tabFourthText[index]),
                                SizedBox(child: tabFifthText[index]),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(child: tabSixthText[index]),
                                    SizedBox(
                                      child: Obx(
                                        () => InkWell(
                                          onTap: () {
                          
                                              controller.likedStatuses[index].value =
                                                  !controller.likedStatuses[index].value;
                          
                          
                          
                                         
                                          },
                                          child: Icon(
                                            Icons.favorite_border_rounded,
                                            color: controller.likedStatuses[index].value
                                                ? Colors.red
                                                : const Color(0x59303030),
                                            size: 55,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
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
//----------------------------------------------------------
Widget searchBar(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width*0.7,
    height: MediaQuery.of(context).size.height*0.07,
    child: Center(  
      child: TextFormField(
          showCursor: false,
          onChanged: (value) {},
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 235, 234, 234),
            hintText: "'北海道, 札幌市'",
            hintStyle: TextStyle(
              color: Color(0xFF303030),
              fontSize: 28,
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
    ),
  );
}

