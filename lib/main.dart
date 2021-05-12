import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LogInScreen(),
    );
  }
}

class LogInScreen extends StatelessWidget {
  // String getText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Log in",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Container(
        color: Colors.grey[400],
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 100,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: "  Sign up",
                              style: TextStyle(color: Colors.blue))
                        ]),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    height: 450,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 56,
                          child: TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Forgot password?",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 56,
                          child: TextField(
                            // onSubmitted: (a) {
                            //   getText = a;
                            // },
                            obscureText: true,
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        Container(
                          height: 56,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Log in ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//class alisher