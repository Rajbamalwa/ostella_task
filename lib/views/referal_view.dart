import 'package:flutter/material.dart';
import 'package:ostella_task/constants.dart';
import 'package:ostella_task/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ReferalView extends StatefulWidget {
  const ReferalView({super.key});

  @override
  State<ReferalView> createState() => _ReferalViewState();
}

class _ReferalViewState extends State<ReferalView> {
  double _progress = 0.0;
  @override
  void initState() {
    super.initState();
    setState(() {
      _progress = 10;
    });
  }

  var data = [
    {
      "step": "STEP 1",
      "user": "YOU",
      "title": "",
      "detail": "",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: grey,
          size: 20,
        ),
        backgroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "Refer & Earn",
                black,
                25,
                FontWeight.w700,
                TextOverflow.clip,
                TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(firstImageUrl),
                  ),
                  SizedBox(
                    width: width * 0.7,
                    child: CustomText(
                      "xxxxxxxx got xxx (Money) just now",
                      defaultColor,
                      14,
                      FontWeight.w700,
                      TextOverflow.clip,
                      TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: width,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width * 0.3,
                            child: CustomText(
                              "My coins",
                              black,
                              18,
                              FontWeight.w700,
                              TextOverflow.clip,
                              TextAlign.left,
                            ),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: defaultColor3,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: CustomText(
                                        "Withdraw",
                                        white,
                                        14,
                                        FontWeight.w500,
                                        TextOverflow.fade,
                                        TextAlign.center)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: LinearPercentIndicator(
                            width: width * 0.8,
                            lineHeight: 14.0,
                            percent: 0.2,
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            backgroundColor: Colors.grey,
                            progressColor: defaultColor,
                            barRadius: Radius.circular(20),
                          ),
                        ),
                        Positioned(
                          left: (_progress * 90).clamp(
                              100, 100), // Adjust the position of the icon
                          child: Column(
                            children: [
                              const Icon(Icons.emoji_events, size: 25.0),
                              CustomText("500", grey, 14, FontWeight.w500,
                                  TextOverflow.clip, TextAlign.center),
                            ],
                          ),
                        ),
                        Positioned(
                          left: (5.0 * 100).clamp(
                              100, 190), // Adjust the position of the icon
                          child: Column(
                            children: [
                              const Icon(Icons.emoji_events, size: 25.0),
                              CustomText("1000", grey, 14, FontWeight.w500,
                                  TextOverflow.clip, TextAlign.center),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomText("Invite 3 new users to get N500", grey, 14,
                        FontWeight.w500, TextOverflow.clip, TextAlign.center),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(),
                    ),
                    CustomText(
                        "Cash will expire in 6Day 13h 59min 34s",
                        grey,
                        14,
                        FontWeight.w500,
                        TextOverflow.clip,
                        TextAlign.center),
                    SizedBox(
                      height: 20,
                    ),
                    Buttons(
                        onPress: () {},
                        child: Center(
                            child: CustomText(
                                "Invite",
                                white,
                                14,
                                FontWeight.w500,
                                TextOverflow.fade,
                                TextAlign.center)),
                        height: 50),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        maintainState: true,
                        iconColor: black,
                        collapsedIconColor: defaultColor,
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText(
                              "HOW TO EARN",
                              defaultColor,
                              16,
                              FontWeight.w500,
                              TextOverflow.fade,
                              TextAlign.start),
                        ),
                        children: [
                          ListViewWidget(
                              width,
                              "Step 1",
                              "YOU",
                              "Share Link to Friends",
                              "Tips share to an group to get rewards faster"),
                          ListViewWidget(
                              width,
                              "Step 2",
                              "INVITEE",
                              "Fill mobile phone number, download PalmPay",
                              "one inviter can only be associated with a mobile phone number."),
                          ListViewWidget(
                              width,
                              "Step 3",
                              "INVITEES",
                              "Sign up for PalmPay，get benefits for new users",
                              ""),
                          ListViewWidget(
                              width, "Step 4", "YOU", "Get great rewards!", ""),
                          CustomText(
                              "RULES",
                              Colors.grey.shade800,
                              18,
                              FontWeight.w500,
                              TextOverflow.fade,
                              TextAlign.start),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                                "1. Each round of activity is 7 days. When the activity expires, if the user's amount has reached the withdrawal threshold and has not been withdrawn, the reward amount will be automatically withdrawn;\n2. After the event expires, the reward amount will be reissued, and the relationship between the inviter and the invitee will be cleared;\n3. If the invitee participates in other registration activities at the same time after registration, the status in the activity will be marked as [Invalid], and the inviter will not be able to get rewards.",
                                grey,
                                10,
                                FontWeight.w500,
                                TextOverflow.fade,
                                TextAlign.start),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Buttons(
                  onPress: () {},
                  child: Center(
                      child: CustomText(
                          "Refer and Earn",
                          white,
                          16,
                          FontWeight.w500,
                          TextOverflow.fade,
                          TextAlign.center)),
                  height: 50),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
