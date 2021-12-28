import 'package:flutter/material.dart';
import 'main.dart';

class OrderOpenPage extends StatefulWidget {
  const OrderOpenPage({Key key}) : super(key: key);
  @override
  _OrderOpenPageState createState() => _OrderOpenPageState();
}

class _OrderOpenPageState extends State<OrderOpenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xff69A03A),
        leading: Padding(
          padding: const EdgeInsets.only(),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AdminPage()));
            },
          ),
        ),
        title: const Center(
          child: Text(
              'Order',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
        ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Order ',
                          style: TextStyle(
                            color: Color(0xff1C6E16),
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 10.0,
                            ),
                            child: Text(
                              'Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 80.0,
                            ),
                            child: Text(
                              'Quantity',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 60.0,
                            ),
                            child: Text(
                              'Amount',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 15.0,
                            ),
                            child: Text(
                              'potato',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 90.0,
                            ),
                            child: Text(
                              '2 kg',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 100.0,
                            ),
                            child: Text(
                              '140 Rs',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 15.0,
                            ),
                            child: Text(
                              'Tomato',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 90.0,
                            ),
                            child: Text(
                              '4 kg',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 100.0,
                            ),
                            child: Text(
                              '280 Rs',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 15.0,
                            ),
                            child: Text(
                              'Brinjal',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 90.0,
                            ),
                            child: Text(
                              '3 kg',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: 100.0,
                            ),
                            child: Text(
                              '100 Rs',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 25.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 50.0,
                        ),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Total:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                          Text(
                            '9 Kg',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                          Text(
                            '520 Rs',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                       Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextField(
                             readOnly: true,
                          decoration: InputDecoration(
                            hintText: 'abc Address of client ',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                     // Image.asset(
                       // 'images/map.png',
                        //width: 600.0,
                       // height: 240.0,
                      //  fit: BoxFit.cover,
                    //  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 105.0,
                              top: 90.0,
                            ),
                            child: FlatButton(
                              textColor: Colors.white,
                              color: const Color(0xff69A03A),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Accept",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 55.0,
                              top: 90.0,
                            ),
                            child: FlatButton(
                              textColor: Colors.white,
                              color: Colors.red,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Reject",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              onPressed: () {},
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
    );
  }
}
