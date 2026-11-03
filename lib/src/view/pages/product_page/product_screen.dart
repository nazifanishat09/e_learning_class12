import 'package:class12/src/view/appData.dart';
import 'package:class12/src/view/widgets/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Map<String, dynamic>> item = [
    {'icon': Icons.wifi, 'name': 'Wifi'},
    {'icon': Icons.ac_unit, 'name': 'AC'},
    {'icon': Icons.monitor, 'name': 'TV'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHD9hRpu13EJe0IezawGVU32SnvLbmFA8XrETc8LF6XA&s=10',
                  height: 400,
                ),
                Positioned(
                  top: 40,
                  left: 1,
                  right: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: colorW,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_back_ios),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: colorW,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.favorite_outline),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(0, -20),

              child: Container(
                //height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: colorW,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 173, 210),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: CustomTextWidget(
                            title: 'Female',
                            fW: FontWeight.w500,
                            fS: 15,
                            fC: Colors.pink,
                          ),
                        ),
                      ),
                      CustomTextWidget(
                        title: 'Melati Boarding House',
                        fW: FontWeight.w600,
                        fS: 18,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          CustomTextWidget(
                            title: '4.8',
                            fS: 15,
                            fW: FontWeight.w600,
                            fC: Colors.grey,
                          ),
                          CustomTextWidget(
                            title: '(124)',
                            fS: 13,
                            fW: FontWeight.w600,
                            fC: Colors.grey,
                          ),

                          Icon(Icons.location_on, color: Colors.grey),
                          CustomTextWidget(
                            title: 'Kallanpur,Dhaka',
                            fS: 15,
                            fW: FontWeight.w600,
                            fC: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomTextWidget(
                            title: 'Rp800,000',
                            fS: 20,
                            fW: FontWeight.w700,
                            fC: primaryColor,
                          ),
                          CustomTextWidget(
                            title: '/month',
                            fS: 17,
                            fW: FontWeight.w600,
                            fC: Colors.grey,
                          ),
                        ],
                      ),
                      CustomTextWidget(
                        title: 'Facilities',
                        fW: FontWeight.w600,
                        fS: 18,
                      ),

                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          itemCount: item.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,

                          itemBuilder: (c, v) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: colorW,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: colorG),
                              ),
                              child: Row(
                                spacing: 9,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomTextWidget(
                                    title: item[v]['name'],
                                    fW: FontWeight.w600,
                                    fS: 18,
                                    fC: primaryColor,
                                  ),
                                  Icon(item[v]['icon'], color: primaryColor),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      CustomTextWidget(
                        title: 'Description',
                        fW: FontWeight.w600,
                        fS: 18,
                      ),

                      CustomTextWidget(
                        title: 'A comfortable boarding house with complete facilities, suitable for both female students and female workers. Strategic location near the campus',
                        fW: FontWeight.w500,
                        fS: 15,
                        fC: Colors.grey,
                        maxline: 10,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextWidget(
                            title: 'Location',
                            fW: FontWeight.w600,
                            fS: 18,
                          ),
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              color: colorW,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: colorG),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCnYW_9hnpBCmLdfK4x_XFYTir1F--emUqBaN1V8oF1w&s=10',
                                  height: 25,
                                ),
                                CustomTextWidget(
                                  title: 'View on Maps',
                                  fW: FontWeight.w600,
                                  fS: 14,
                                  fC: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Row(
                        spacing: 5,
                        children: [
                          Icon(Icons.location_on, size: 25, color: Colors.grey),
                          SizedBox(
                            width: 300,
                            child: CustomTextWidget(
                              title: 'Kalyanpur Bus Stand, Mirpur Road, Dhaka - 1207.',
                              fW: FontWeight.w500,
                              fS: 15,
                              fC: Colors.grey,
                              maxline: 2,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      CustomTextWidget(
                        title: 'Rules',
                        fW: FontWeight.w600,
                        fS: 18,
                      ),
                      Container(
                        height: 127,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: colorG),
                          color: colorW,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                spacing: 5,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                  ),

                                  CustomTextWidget(
                                    title: 'Pets are not allowed',
                                    fW: FontWeight.w500,
                                    fS: 13,
                                    fC: Colors.grey,
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              height: 90,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: colorG),
                                color: colorW,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      spacing: 10,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextWidget(
                                          title: 'Starting Price',
                                          fS: 17,
                                          fW: FontWeight.w500,
                                          fC: Colors.grey,
                                        ),
                                        Row(
                                          children: [
                                            CustomTextWidget(
                                              title: 'Rp800,000',
                                              fS: 19,
                                              fW: FontWeight.w600,
                                              fC: primaryColor,
                                            ),
                                            CustomTextWidget(
                                              title: '/month',
                                              fS: 15,
                                              fW: FontWeight.w600,
                                              fC: Colors.grey,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 60,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: CustomTextWidget(
                                          title: 'Book',
                                          fC: colorW,
                                          fS: 25,
                                          fW: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
