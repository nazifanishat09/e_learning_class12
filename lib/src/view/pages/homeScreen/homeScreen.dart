import 'package:carousel_slider/carousel_slider.dart';
import 'package:class12/src/view/appData.dart';
import 'package:class12/src/view/widgets/customText.dart';
import 'package:class12/src/view/widgets/customTextField.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Map<String, dynamic>> gender = [
    {'title': 'All', 'icon': Icons.home_filled, 'color': Colors.blue},
    {'title': 'Male', 'icon': Icons.boy, 'color': Colors.black},
    {'title': 'FeMale', 'icon': Icons.girl, 'color': Colors.pink},
    {'title': 'Custom', 'icon': Icons.transgender, 'color': Colors.greenAccent},
  ];
  int selected = 0;
  List i = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUU2HB0SZv2jKSMJQux3R5wlljp1hnNiGa052yyE-9rA&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDvJcg-7ag5lCq7GBZzXUo_bJahtjenvHTcYZMEqYkpQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzpzX1k0eYQkcxPjQw0p9x1Xfxl4hHnJQTFA4pU31rCbRYuqSl4f2Jdw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqTn2PQgdvA6hkBy1jH6InDtk44LHKIYWesqpwDUHwow&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHtZzPwLjmerESVk6xPO1WLwtb-pMVIyJF53_RqSK2vg&s=10',
  ];

  List<Map<String, dynamic>> product = [
    {
      'gender': 'Female',
      'name': 'Melati House',
      'location': 'Kallynpur,Dhaka',
      'color': Color(0xffF584C2),
      'Textcolor': Color(0xffE30760),
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHD9hRpu13EJe0IezawGVU32SnvLbmFA8XrETc8LF6XA&s=10',
    },
    {
      'gender': 'Male',
      'name': '	Aksia House',
      'location': 'Shymoli,Dhaka',
      'color': Color(0xff90BAF0),
      'Textcolor': Color(0xff094EE3),
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxKHBduf3YZRCwnYTgMYxwJweWxtWT_VIbaBcrNtca7w&s=10',
    },
    {
      'gender': 'Female',
      'name': 'Melati House',
      'location': 'Uttora,Dhaka',
      'color': Color(0xffF584C2),
      'Textcolor': Color(0xffE30760),
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWzxbHwEybXY6aboc7UvIYw2Lubwmuy36Rf3D_LnZ4og&s=10',
    },
    {
      'gender': 'Male',
      'name': '	Aksia House',
      'location': 'Motizhil,Dhaka',
      'color': Color(0xff90BAF0),
      'Textcolor': Color(0xff094EE3),
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq3QX5mR8dhgFcUtuvR0RhVMo3Wd2VMBcqC21FIqbAeg&s=10',
    },
  ];
  List<bool> isClick = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        title: 'Hi, Nazifa 👋',
                        fS: 24,
                        fW: FontWeight.w600,
                      ),
                      CustomTextWidget(
                        title: 'Find comfortable boarding houses nearby',
                        fS: 15,
                        fW: FontWeight.w600,
                        fC: Colors.grey,
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(Icons.notifications_none),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.location_on, color: primaryColor),
                    CustomTextWidget(
                      title: 'Kallynpur,Dhaka',
                      fS: 18,
                      fW: FontWeight.w500,
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ),
              SizedBox(height: 5),

              SizedBox(
                height: 50,
                child: CustomTextField(
                  title: 'Search boarding houses, locations, or campuses...',
                  prefixIcon: Icon(Icons.search),
                  keyboard: TextInputType.text,
                ),
              ),

              SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: gender.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),

                  itemBuilder: (c, v) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = v;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: colorW,
                            border: Border.all(
                              color: selected == v ? primaryColor : Colors.grey,
                              width: selected == v ? 3 : 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                gender[v]['icon'],
                                color: gender[v]['color'] as Color,
                              ),
                              CustomTextWidget(
                                title: '${gender[v]['title']}',
                                fS: 16,
                                fW: FontWeight.w600,
                                fC: primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 900),

                  viewportFraction: 1.0,
                ),
                items: i.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imageUrl),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    title: 'Nearby Boarding Houses',
                    fS: 15,
                    fW: FontWeight.w600,
                  ),
                  CustomTextWidget(
                    title: 'See All',
                    fS: 15,
                    fW: FontWeight.w600,
                    fC: primaryColor,
                  ),
                ],
              ),

              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: product.length,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (c, v) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorW,
                          boxShadow: [
                            BoxShadow(offset: Offset(0, 0), blurRadius: 6),
                          ],
                        ),
                        child: Column(
                          spacing: 2,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image.network(
                                    product[v]['img'],
                                    height: 120,
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  child: Row(
                                    spacing: 20,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Container(
                                          height: 30,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: product[v]['color'],
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Center(
                                            child: CustomTextWidget(
                                              title: product[v]['gender'],
                                              fS: 15,
                                              fC:
                                                  product[v]['Textcolor']
                                                      as Color,
                                              fW: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              isClick[v] = !isClick[v];
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: isClick[v]
                                                ? Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  )
                                                : Icon(Icons.favorite_border),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: CustomTextWidget(
                                title: product[v]['name'],
                                fS: 18,
                                fW: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on, color: Colors.grey),
                                  CustomTextWidget(
                                    title: product[v]['location'],
                                    fS: 15,
                                    fW: FontWeight.w600,
                                    fC: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  CustomTextWidget(
                                    title: 'Rp800,000',
                                    fS: 15,
                                    fW: FontWeight.w700,
                                    fC: primaryColor,
                                  ),
                                  CustomTextWidget(
                                    title: '/month',
                                    fS: 13,
                                    fW: FontWeight.w600,
                                    fC: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
