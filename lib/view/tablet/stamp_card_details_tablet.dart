import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitaktestui/model/getx_controller.dart';
import 'package:jiitaktestui/view-model/stamp_card_detials_list.dart';

class SecondPageTablet extends StatefulWidget {
  const SecondPageTablet({super.key});

  @override
  State<SecondPageTablet> createState() => _SecondPageTabletState();
}

final Controller controller = Get.put(Controller());

class _SecondPageTabletState extends State<SecondPageTablet> {
  @override
  Widget build(BuildContext context) {
    final heigt = MediaQuery.of(context).size.height;
    final widt = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
//----------------------------------------------------AppBar-------------------------------------------------------------//      

      appBar: AppBar(
        toolbarHeight: heigt * 0.06,
        elevation: 0,
        backgroundColor: const Color(0xFFA7B0FF),
        leading: Transform.scale(
          scale: 1.5,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 1),
            child: CircleAvatar(
              backgroundColor: Colors.transparent.withOpacity(0.1),
              child: IconButton(
                  onPressed: () {
                    Get.back();//--------------Getting Back-------------------//
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
        title: const Center(
          child: Text(
            'スタンプカード詳細',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 29,
              fontFamily: 'Noto Sans JP',
              fontWeight: FontWeight.w500,
              letterSpacing: -0.24,
            ),
          ),
        ),
        actions: [
          Transform.scale(
            scale: 2,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 1),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/minus-circle (1).png",
                  )),
            ),
          )
        ],
      ),
 //-------------------------------------body--------------------------------------------------//     

      body: Column(
        children: [
          Container(
            color: const Color(0xFFA7B0FF),
            width: widt,
            height: heigt * 0.5,
            child: const Padding(
              padding: EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      'Mer キッチン',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Noto Sans JP',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Text(
                          '現在の獲得数',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Noto Sans JP',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                        Text(
                          '30 ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontFamily: 'Noto Sans JP',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.24,
                          ),
                        ),
                        Text(
                          '個',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Noto Sans JP',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.24,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
 //-------------------------------------------------------------     
      bottomSheet: BottomSheet(
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        onClosing: () {},
        builder: (context) {
          double height = MediaQuery.of(context).size.height;
          double width = MediaQuery.of(context).size.width;

          return Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            height: height * 0.85,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
 //-------------------------------------------------------           
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.35,
                  width: width * 0.95,
                  child: PageView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        height: height,
                        width: width,
                        margin: const EdgeInsets.all(3),
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 7,
                              offset: Offset(1, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Center(
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 15,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5,
                                    childAspectRatio: 1.3,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              return SizedBox(
                                child: Image.asset(
                                  "assets/Tickimage.jpg",
                                  scale: 1.2,
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: widt * 0.2,
                    child: const Text(
                      '2 / 2枚目',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF454545),
                        fontSize: 25,
                        fontFamily: 'Noto Sans JP',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.26,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'スタンプ獲得履歴',
                    style: TextStyle(
                      color: Color(0xFF454545),
                      fontSize: 25,
                      fontFamily: 'Noto Sans JP',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),
   //----------------------------------------------ListViewSeparated-----------------------------------------//                
             
                Expanded(
                
                  child: ListView.separated(
                    itemCount: datesTablet.length,
                    separatorBuilder: (context, index) {
                      return Container(
                        color: Colors.black,
                        width: width,
                        height: height * 0.0002,
                      );
                    },
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: width,
                        height: height * 0.12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            datesTablet[index],
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                firstContentTablet[index],
                                trailingContentTablet[index]
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
