import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban/utills/color.dart';
import 'package:urban/utills/images.dart';

final List<String> imagesList = [
  home_img1,
  home_img2,
  home_img3,
];

List<Map> servicesList = [
  {"image": hair, "text": "Salon for Women"},
  {"image": spa, "text": "Spa for Women"},
  {"image": hairGel, "text": "Salon for Men"},
  {"image": massage, "text": "Massage for Men"},
  {"image": ac, "text": "AC Service & Repair"},
  {"image": appliance, "text": "Appliance Repair"},
  {"image": cleaning, "text": "Cleaning & Disinfection"},
  {"image": electricians, "text": "Electricians"},
  {"image": plumber, "text": "Plumbers & Carpenters"},
  {"image": roService, "text": "Ro Service & Repair"},
];

List<Map> cleanList = [
  {"image": bathroom, "text": "Bathroom and Kitchen Cleaning"},
  {"image": fullHome, "text": "Full Home Cleaning"},
  {"image": sofaCarpet, "text": "Sofa & Carpet Cleaning"},
];

List<Map> bestOffersList = [
  {"image": hairDryer, "text": "Salon At Home"},
  {"image": massageMen, "text": "Massage Therapy For Men"},
  {"image": cleaningBathroom, "text": "Bathroom and Kitchen Cleaning"}
];

List<Map> applianceList = [
  {"image": electricGeyser, "text": "Geyser"},
  {"image": filter, "text": "Water Purifier"},
  {"image": washingMachine, "text": "Washing Machine"},
  {"image": microwaveOven, "text": "Microwave"}
];

List<Map> carpetCleanList = [
  {"image": homeCleaning, "text": "Full Home Cleaning"},
  {"image": cleaner, "text": "Sofa & Carpet Cleaning"},
  {"image": sofaCarpet, "text": "Sofa & Carpet Cleaning"}
];

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

Widget appBar(onTap, text) => Container(
      height: 122,
      width: Get.width,
      color: white,
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20, top: 30),
        child: Row(
          children: [
            InkWell(
              onTap: onTap,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: whiteF1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: gray80,
                    size: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20, color: black, fontFamily: "RobotoBold"),
            )
          ],
        ),
      ),
    );

TableRow tableRow(text, IconData icon, color, text2) => TableRow(children: [
      Text(
        text,
        style:
            TextStyle(fontFamily: "robotoRegular", color: black, fontSize: 18),
      ),
      Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            text2,
            style: TextStyle(
                fontFamily: "robotoRegular", color: black, fontSize: 18),
          ),
        ],
      ),
    ]);

Widget pickAddressText(text, text2) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 16, color: gray95, fontFamily: "RobotoRegular"),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text2,
          style:
              TextStyle(fontSize: 20, color: black, fontFamily: "RobotoBold"),
        )
      ],
    );

Widget textField(text) => TextFormField(
      style: TextStyle(fontSize: 16, color: black, fontFamily: "RobotoRegular"),
      cursorColor: black,
      decoration: InputDecoration(
        hintText: text,
        isDense: true,
        filled: true,
        fillColor: whiteLight,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: whiteLight)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: whiteLight)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: whiteLight)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: whiteLight)),
      ),
    );

class ChatUsers {
  String name;
  String messageText;
  String imageURL;
  String time;
  int pendingMessage;

  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.imageURL,
      required this.time,
      required this.pendingMessage});
}

List<ChatUsers> chatUsers = [
  ChatUsers(
      name: "Mensaje...",
      messageText: "Detalle de la notificación...",
      imageURL: person1,
      time: "3:02 PM",
      pendingMessage: 0)
];

// ChatUsers(name: "Chloe", messageText: "That's Great", imageURL: person2, time: "2:58 PM", pendingMessage: 2),
// ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: person3, time: "2:41 PM", pendingMessage: 0),
// ChatUsers(name: "Phoebe", messageText: "Busy! Call me in 20 mins", imageURL: person4, time: "2:27 PM", pendingMessage: 0),
// ChatUsers(name: "John Doe", messageText: "Thankyou, It's awesome", imageURL: person5, time: "2:16 PM", pendingMessage: 0),
// ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: person6, time: "3:22 PM", pendingMessage: 1),
// ChatUsers(name: "Andrey Jones", messageText: "That's Great", imageURL: person8, time: "2:27 PM", pendingMessage: 0),
// ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: person9, time: "2:16 PM", pendingMessage: 3)];

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey my friend, I would like to talk you",
      messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey Kriss, I am doing fine dude. wbu?",
      messageType: "sender"),
  ChatMessage(
      messageContent: "Are you finished that movie?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Is there any thing wrong?", messageType: "sender"),
  ChatMessage(messageContent: "Wes What’s up", messageType: "sender"),
];

Widget dateTimeContainer({text, color, borderColor, textColor}) => Container(
      height: 42,
      width: 63,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 14, fontFamily: "RobotoMedium", color: textColor),
      ),
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(15)),
    );
