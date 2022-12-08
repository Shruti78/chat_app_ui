import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chat_app_ui/icons.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffff6fa),
        body: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/download.jpeg',
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text(
                          'Puzzels',
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(color: Color(0xffff6d98)),
                              fontSize: 22),
                        ),
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            BootstrapIcons.sliders,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: GridView.count(
                        scrollDirection: Axis.horizontal,
                        // maxCrossAxisExtent: 250,
                        childAspectRatio: 1.25,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,

                        crossAxisCount: 1,
                        children: [
                          gridCard(url: 'assets/8.jpeg', name: 'Likes'),
                          gridCard(name: 'Lucy', url: 'assets/4.jpeg'),
                          gridCard(name: 'Dom', url: 'assets/3.jpeg'),
                          gridCard(name: 'Nancy', url: 'assets/2.jpeg'),
                          gridCard(name: 'Max', url: 'assets/1.jpeg'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  Expanded(
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/4.jpeg',
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'Lucy',
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(fontSize: 22)),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                              ],
                            ),
                            subtitle: Text(
                              'Hii!',
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(fontSize: 18)),
                            ),
                            trailing: Column(
                              children: [
                                Text(
                                  '13:10',
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(fontSize: 15)),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xffff5f8f)),
                                  child: Center(
                                      child: Text(
                                    '1',
                                    style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  )),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xfffff6fa),
                            height: 15,
                            indent: 25,
                            endIndent: 25,
                            thickness: 2,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/3.jpeg',
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'Dom',
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                          fontSize: 22, color: Colors.grey)),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                              ],
                            ),
                            subtitle: Text(
                              'Hii!',
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 18, color: Colors.grey)),
                            ),
                            trailing: Column(
                              children: [
                                Text(
                                  '13:10',
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xfffff6fa),
                            height: 15,
                            indent: 25,
                            endIndent: 25,
                            thickness: 2,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/1.jpeg',
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'Max',
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(fontSize: 22)),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                              ],
                            ),
                            subtitle: Text(
                              'Typing...',
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xffff6d98))),
                            ),
                            trailing: Column(
                              children: [
                                Text(
                                  '13:10',
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(fontSize: 15)),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xffff5f8f)),
                                  child: Center(
                                      child: Text(
                                    '9+',
                                    style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  )),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xfffff6fa),
                            height: 15,
                            indent: 25,
                            endIndent: 25,
                            thickness: 2,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 330,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      height: 53,
                      width: 325,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        cursorColor: Colors.grey,
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                        decoration: InputDecoration(
                          icon: Icon(Icons.search, color: Colors.grey),
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color(0xfffff6fa),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.home_image,
                  size: 55,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.explore_image,
                  size: 50,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.calender_image,
                  size: 50,
                  color: Colors.black,
                ),
                label: ""),
          ],
        ),
      ),
    );
  }

  Stack gridCard({required String name, required String url}) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              child: AspectRatio(
                aspectRatio: 0.75,
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 30,
          child: Container(
            width: 90,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style:
                        GoogleFonts.nunito(textStyle: TextStyle(fontSize: 13)),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 12,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
