import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testwork/components/component.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 35.0,
              ),
              onPressed: () {
                //Navigator.of(context).pop();
              },
            ),
            SizedBox(
              width: 100.0,
            ),
            Icon(
              Icons.star,
              color: Colors.blue,
              size: 35.0,
            ),
          ],
        ),
        actions: [
          Stack(alignment: AlignmentDirectional.topEnd, children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C5603AQHz98Psa96yKQ/profile-displayphoto-shrink_800_800/0/1637346572397?e=1656547200&v=beta&t=lkma92kCK76BDjS2Dzpo_DPHeel3I9rri5_4atXgC1A'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 1.0, end: 1.0),
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ]),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '2',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        'Cases',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 1.0,
                    height: 20.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: [
                      Text(
                        '2',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        'Order',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 1.0,
                    height: 20.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: [
                      Text(
                        '10',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        'Events',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 1.0,
                    height: 20.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: [
                      Text(
                        '81',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        'Violations',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Text(
                          "VIOLATION",
                          style: TextStyle(fontSize: 15.0, color: Colors.red),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        child: Text(
                          "Pending",
                          style: TextStyle(fontSize: 15.0, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 2.0,
                          height: 50.0,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Out of allowed zone",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "48.5052, 32.2600",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              "Sat, Sep 30, 10.30 AM",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 5.0,),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Text(
                          "SEARCH WARRANT",
                          style: TextStyle(
                              fontSize: 15.0, color: Colors.lightBlue),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        child: Text(
                          "Pending",
                          style: TextStyle(fontSize: 15.0, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 2.0,
                          height: 50.0,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sitting missed",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w900),
                            ),
                            Row(
                              children: [
                                Text(
                                  "No.",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.grey),
                                ),
                                Text(
                                  "CR2019-740",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Sat, Sep 30, 10.30 AM",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Text(
                          "PAYMENT",
                          style: TextStyle(fontSize: 15.0, color: Colors.green),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        child: Text(
                          "Pending",
                          style: TextStyle(fontSize: 15.0, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 2.0,
                          height: 50.0,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment Missed",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w900),
                            ),
                            Row(
                              children: [
                                Text(
                                  "No.",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.grey),
                                ),
                                Text(
                                  "CR2019-740",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Sat, Sep 30, 10.30 AM",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Text(
                          "CHECKIN MOBILE",
                          style: TextStyle(fontSize: 15.0, color: Colors.blue),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        child: Text(
                          "Pending",
                          style: TextStyle(fontSize: 15.0, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 2.0,
                          height: 50.0,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Check in missed",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w900),
                            ),
                            Row(
                              children: [
                                Text(
                                  "No.",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.grey),
                                ),
                                Text(
                                  "CR2019-740",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Sat, Sep 30, 10.30 AM",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
                child: Icon(Icons.assistant, color: Colors.white,),
              backgroundColor: Colors.blue,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
        ],
      ),
    );
  }
}
