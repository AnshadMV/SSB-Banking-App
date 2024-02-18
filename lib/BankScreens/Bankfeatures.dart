import 'package:flutter/material.dart';
import 'package:managment/BankScreens/cursor/bankmycards.dart';

class BankFeatures extends StatefulWidget {
  const BankFeatures({super.key, required String title});

  @override
  State<BankFeatures> createState() => _BankFeaturesState();
}

class _BankFeaturesState extends State<BankFeatures> {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/BankImages/backgroundimage(1).jpg",
            ),
            fit: BoxFit.cover,
            opacity: 0.54,
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                // AppBar with back button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        width:
                            25, // Set the width to control the size of the circular button
                        height:
                            47, // Set the height to control the size of the circular button
                        child: AnimatedOpacity(
                          duration: Duration(seconds: 3),
                          opacity: 0.5,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                              // Add any other actions you want to perform when the button is pressed
                            },
                            onHover: (isHovered) {
                              // Handle hover state, e.g., change the color or shape
                            },
                            child: Ink(
                              decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  color: Color.fromARGB(255, 88, 81, 219)),
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Services',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 62, 5, 48),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(0.9),
                      width:
                          25, // Set the width to control the size of the circular button
                      height: 60,

                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 88, 81, 219),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.explore_sharp,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ), // ssb musf

                SizedBox(height: 30),

                Container(
                  height: 160,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: [
                      MyCard(
                        balance: 3455.34,
                        cardNumber: 87633245,
                        expiryMonth: 01,
                        expiryYear: 23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.83)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                //begin color
                                Colors.white.withOpacity(0.95),
                                //end color
                                Colors.white.withOpacity(0.15),
                              ]),
                        ),
                        cardname: 'DEBIT',
                      ),
                      MyCard(
                        balance: 57565.34,
                        cardNumber: 324235464,
                        expiryMonth: 02,
                        expiryYear: 24,
                        cardname: 'CREDIT',
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFB4ADEDE),
                                Color(0xFFF7BD5F5),
                                Color(0xFFF1CA7EC),
                                Color.fromARGB(255, 21, 113, 251),
                                //add more colors for gradient
                              ],
                              begin: Alignment
                                  .topLeft, //begin of the gradient color
                              end: Alignment
                                  .bottomRight, //end of the gradient color
                              stops: [
                                0,
                                0.2,
                                0.5,
                                0.8
                              ] //stops for individual color
                              //set the stops number equal to numbers of color
                              ),

                          borderRadius:
                              BorderRadius.circular(30), //border corner radius
                        ),
                      ),
                      MyCard(
                        balance: 645645,
                        cardNumber: 87923421343,
                        expiryMonth: 03,
                        expiryYear: 25,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 252, 170, 48),
                                const Color.fromARGB(255, 248, 178, 87),
                                Color.fromARGB(255, 205, 76, 67),
                                Color.fromARGB(255, 231, 111, 111)
                                //add more colors for gradient
                              ],
                              begin: Alignment
                                  .topLeft, //begin of the gradient color
                              end: Alignment
                                  .bottomRight, //end of the gradient color
                              stops: [
                                0,
                                0.2,
                                0.5,
                                0.8
                              ] //stops for individual color
                              //set the stops number equal to numbers of color
                              ),

                          borderRadius:
                              BorderRadius.circular(30), //border corner radius
                        ),
                        cardname: 'LOAN',
                      ),
                    ],
                  ),
                ),

                // mycard
                SingleChildScrollView(),

                SizedBox(height: 20),
                Text(
                  "Schemes",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 16, 16, 17)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Card(
                          child: ListTile(
                            leading: Image(
                              image:
                                  AssetImage("images/BankImages/Education.png"),
                            ),
                            title: Text(
                              'KURI',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 15, 6, 185),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                                'Emerging Hand`s power With bolding inked mind filling ideas in paper'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Card(
                          child: ListTile(
                            leading: Image(
                              image: AssetImage(
                                  "images/BankImages/Transportation.png"),
                            ),
                            title: Text(
                              'FD (Fixed Deposit)',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 13, 4, 185)),
                            ),
                            subtitle: Text(
                                'Unleashing The Most fentabulus Brains without fearing as Stone'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Card(
                          child: ListTile(
                            leading: Image(
                              image:
                                  AssetImage("images/BankImages/Deposit.png"),
                            ),
                            title: Text(
                              'Coming Soon',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 13, 4, 185)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // indicatorr

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => Withdraw()),
                      //     );
                      //   },
                      //   child: MyButton(
                      //     iconImagePath: 'lib/icons/send-money.png',
                      //     buttonText: 'Withdraw',
                      //   ),
                      // ),
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => Withdraw()),
                      //     );
                      //   },
                      //   child: MyButton(
                      //     iconImagePath: 'lib/icons/bill.png',
                      //     buttonText: 'Deposit',
                      //   ),
                      // ),
                    ],
                  ),
                ),
                // withdraw//deposit//history

                SizedBox(height: 10),
                // tile list
                // tile list
              ],
            ),
          ],
        ),
      ),
    );
  }
}
