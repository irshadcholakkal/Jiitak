import 'package:flutter/material.dart';
import 'package:jiitaktestui/view/mobile/homepage_mobile.dart';

Widget dataAndTextfield({data, hinttext, width, height,size}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: data,
                style:  TextStyle(
                  color: const Color(0xFF4B4948),
                  fontSize: size,
                  fontFamily: 'Noto Sans JP',
                  fontWeight: FontWeight.w500,
                ),
              ),
             TextSpan(
                text: '*',
                style: TextStyle(
                  color: const Color(0xFFEA5307),
                  fontSize: size,
                  fontFamily: 'Noto Sans JP',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
          width: width,
          height: height,
          child: TextField(
            showCursor: false,
            decoration: InputDecoration(
                hintText: hinttext,
                hintStyle:  TextStyle(
                  color: const Color(0xFF454545),
                  fontSize: size,
                  fontFamily: 'Noto Sans JP',
                  fontWeight: FontWeight.w400,
                ),
                focusColor: const Color(0xFFE7E7E7),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xFFE7E7E7))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xFFE7E7E7))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xFFE7E7E7)))),
          )),
    ],
  );
}

Widget subHeadings({data1, data2,size}) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: data1,
          style:  TextStyle(
            color: const Color(0xFF4B4948),
            fontSize: size,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w500,
          ),
        ),
         TextSpan(
          text: '*',
          style: TextStyle(
            color: const Color(0xFFEA5307),
            fontSize: size,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w500,
          ),
        ),
        TextSpan(
          text: data2,
          style:  TextStyle(
            color: const Color(0xFF9C9795),
            fontSize: size,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}

List<AssetImage> firstrow = [
  const AssetImage("assets/pic1.jpg"),
  const AssetImage("assets/pic1.jpg"),
  const AssetImage("assets/pic2.jpg"),
];
List<AssetImage> secondrow = [
  const AssetImage("assets/pic3.jpg"),
  const AssetImage("assets/pic3.jpg"),
  const AssetImage("assets/pic3.jpg"),
];
List<AssetImage> thirdrow = [
  const AssetImage("assets/pic4.jpg"),
  const AssetImage("assets/pic5.png"),
  const AssetImage("assets/pic6.png"),
];
List<AssetImage> fourthrow = [
  const AssetImage("assets/pic7.png"),
  const AssetImage("assets/pic8.png"),
  const AssetImage("assets/pic9.png"),
];
List<AssetImage> fifthrow = [
  const AssetImage("assets/pic10.png"),
  const AssetImage("assets/pic11.png"),
  const AssetImage("assets/pic12.png"),
];

Widget subSubHeadings({data,size}) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: data,
          style:  TextStyle(
            color: const Color(0xFF4B4948),
            fontSize: size,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w500,
          ),
        ),
         TextSpan(
          text: '*',
          style: TextStyle(
            color: const Color(0xFFEA5307),
            fontSize: size,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

var items1 = [
  '17:00',
  '18:00',
  '19:00',
];
var items2 = [
  '20:00',
  '18:00',
  '19:00',
];
var items3 = [
  '11:00',
  '18:00',
  '19:00',
];
var items4 = [
  '15:00',
  '18:00',
  '19:00',
];

Widget dropdownButton({data, List<String>? itemsdata}) {
  return Container(
    width: 124,
    height: 38,
    padding: const EdgeInsets.all(8),
    decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
          borderRadius: BorderRadius.circular(5),
        )),
    child: Center(
      child: DropdownButton(
        underline: const SizedBox(),
        value: data,
        elevation: 0,
        dropdownColor: Colors.white,
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Color(0xFFC6C4C0),
        ),
        items: itemsdata?.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem(
            value: item,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(item),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          data = newValue;
          controller.update();
        },
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ),
    ),
  );
}
Widget dropdownButtonTablet({data, List<String>? itemsdata}) {
  return Container(
    width: 320,
    height: 70,
    padding: const EdgeInsets.all(8),
    decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
          borderRadius: BorderRadius.circular(5),
        )),
    child: Center(
      child: DropdownButton(
        underline: const SizedBox(),
        value: data,
        elevation: 0,
        dropdownColor: Colors.white,
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Color(0xFFC6C4C0),
          size: 40,
        ),
        items: itemsdata?.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem(
            value: item,
            child: Padding(
              padding: const EdgeInsets.only(right: 115.0),
              child: Text(item,style: const TextStyle(fontSize: 20),),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          data = newValue;
          controller.update();
        },
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ),
    ),
  );
}

Widget checkBox({
  required bool isChecked,
  required String data,
  required VoidCallback onTapCallback,
}) {
  return GestureDetector(
    onTap: onTapCallback,
    child: Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: isChecked ? const Color.fromARGB(255, 238, 126, 66) : null,
            border: Border.all(
              color: isChecked ? const Color.fromARGB(255, 238, 126, 66) : const Color(0xFFE7E7E7),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: isChecked
              ? const Icon(
                  Icons.check,
                  size: 15,
                  color: Colors.white,
                )
              : null,
        ),
        const SizedBox(width: 8.0), // Adjust the spacing between the Container and Text
        Text(
          data,
          style: const TextStyle(
            color: Color(0xFF4B4948),
            fontSize: 16,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
Widget checkBoxTablet({
  required bool isChecked,
  required String data,
  required VoidCallback onTapCallback,
}) {
  return GestureDetector(
    onTap: onTapCallback,
    child: Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: isChecked ? const Color.fromARGB(255, 238, 126, 66) : null,
            border: Border.all(
              color: isChecked ? const Color.fromARGB(255, 238, 126, 66) : const Color(0xFFE7E7E7),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: isChecked
              ? const Icon(
                  Icons.check,
                  size: 20,
                  color: Colors.white,
                )
              : null,
        ),
        const SizedBox(width: 8.0), // Adjust the spacing between the Container and Text
        Text(
          data,
          style: const TextStyle(
            color: Color(0xFF4B4948),
            fontSize: 20,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}

var items5=[
  '料理カテゴリー選択'

 


];

Widget dropdownButton2({data, List<String>? itemsdata,width,height,size,padding,iconsize}) {
  return Container(
    width: width,
    height: height,
    padding: const EdgeInsets.all(8),
    decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
          borderRadius: BorderRadius.circular(5),
        )),
    child: Center(
      child: DropdownButton(
        underline: const SizedBox(),
        value: data,
        elevation: 0,
        dropdownColor: Colors.white,
        icon:  Icon(
          Icons.keyboard_arrow_down_rounded,
          color: const Color(0xFFC6C4C0),
          size: iconsize,
        ),
        items: itemsdata?.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem(
            value: item,
            child: Padding(
              padding:  EdgeInsets.only(right: padding),
              child: Text(item,style: TextStyle(
color: const Color(0xFFC6C4C0),
fontSize: size,
fontFamily: 'Noto Sans JP',
fontWeight: FontWeight.w400,
),),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          data = newValue;
          controller.update();
        },
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ),
    ),
  );
}


Widget customTextfiled({hinttext, width, height}){
  return SizedBox(
          width: width,
          height: height,
          child: Center(
            child: TextField(
              showCursor: false,
              decoration: InputDecoration(
                  hintText: hinttext,
                  hintStyle: const TextStyle(
                    color: Color(0xFF454545),
                    fontSize: 16,
                    fontFamily: 'Noto Sans JP',
                    fontWeight: FontWeight.w400,
                  ),
                  focusColor: const Color(0xFFE7E7E7),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Color(0xFFE7E7E7))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Color(0xFFE7E7E7))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Color(0xFFE7E7E7)))),
            ),
          ));
}