import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen3(),
    );
  }
}





class LoginScreen3 extends StatefulWidget {
  @override
  _LoginScreen3State createState() => new _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3>
    with TickerProviderStateMixin {



  @override
  void initState() {
    super.initState();

  }

  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _signupemailTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _phoneTextController = TextEditingController();
  TextEditingController _signuppassTextController = TextEditingController();
  TextEditingController _signuprepassTextController = TextEditingController();

  Widget HomePage() {
    return Scaffold(
      body: new Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(

          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
            image: AssetImage('assets/images/waterbg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: new Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 250.0),
              child: Center(
                child: Icon(
                  Icons.wb_iridescent,
                  color: Colors.blue,
                  size: 40.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "RO",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Fresh",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            new Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
              alignment: Alignment.center,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.lightBlueAccent,
                      onPressed: () => gotoSignup(),
                      child: new Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 20.0,
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                              child: Text(
                                "SIGN UP",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
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
            new Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
              alignment: Alignment.center,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.blue,
                      onPressed: () => gotoLogin(),
                      child: new Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 20.0,
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                              child: Text(
                                "LOGIN",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }

  Widget LoginPage() {
    return Scaffold(
      body: Stack(

        children: <Widget>[
       new Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.9), BlendMode.dstATop),
              image: AssetImage('assets/images/waterbg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
    ),
           Expanded(
            child: new ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(120.0),
                  child: Center(
                    child: Icon(
                      Icons.wb_iridescent,
                      color: Colors.blue,
                      size: 50.0,
                    ),
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: new Text(
                          "EMAIL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 60.0,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                  alignment: Alignment.center,

                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: TextFormField(
                          controller: _emailTextController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email-Id",
                            icon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return "The Email field cannot be empty";


                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 24.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: new Text(
                          "PASSWORD",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                  alignment: Alignment.center,

                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: TextFormField(
                          controller: _passwordTextController,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "Password",
                            icon: Icon(Icons.lock_outline),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "The password field cannot be empty";
                            } else if (value.length < 6) {
                              return "the password has to be at least 6 characters long";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 24.0,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: new FlatButton(
                        child: new Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                  alignment: Alignment.center,
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new FlatButton(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          color: Colors.blue,
                          onPressed: () => {},
                          child: new Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0,
                            ),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Expanded(
                                  child: Text(
                                    "LOGIN",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
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
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(border: Border.all(width: 0.25)),
                        ),
                      ),
                      Text(
                        "OR CONNECT WITH",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      new Expanded(
                        child: new Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(border: Border.all(width: 0.25)),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                  child: new Row(
                    children: <Widget>[

                      new Expanded(
                        child: new Container(
                          margin: EdgeInsets.only(left: 8.0),
                          alignment: Alignment.center,
                          child: new Row(
                            children: <Widget>[
                              new Expanded(
                                child: new FlatButton(
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30.0),
                                  ),
                                  color: Color(0Xffdb3236),
                                  onPressed: () => {},
                                  child: new Container(
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Expanded(
                                          child: new FlatButton(
                                            onPressed: () => {},
                                            padding: EdgeInsets.only(
                                              top: 20.0,
                                              bottom: 20.0,
                                            ),
                                            child: new Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[

                                                Text(
                                                  "GOOGLE",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
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
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
    ],
        ),
      );

  }

  Widget SignupPage() {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
                image: AssetImage('assets/images/waterbg.jpg'),
                fit: BoxFit.cover,
              ),
            ),),
            new ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(100.0),
                  child: Center(
                    child: Icon(
                      Icons.wb_iridescent,
                      color: Colors.blue,
                      size: 50.0,
                    ),
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: new Text(
                          "EMAIL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                  alignment: Alignment.center,

                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: TextFormField(
                          controller: _nameTextController,
                          decoration: InputDecoration(
                            hintText: "Name",
                            icon: Icon(Icons.person),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return "The Name field cannot be empty";


                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: new Text(
                            "Phone",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                  alignment: Alignment.center,

                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: TextFormField(
                          controller: _phoneTextController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Phone Number",

                            icon: Icon(Icons.call),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return "The Phone field cannot be empty";


                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: new Text(
                            "EMAIL",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                  alignment: Alignment.center,

                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: TextFormField(
                          controller: _signupemailTextController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email-Id",
                            icon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return "The Email field cannot be empty";


                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: new Text(
                            "PASSWORD",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                  alignment: Alignment.center,

                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: TextFormField(
                          controller: _signuppassTextController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "**********",
                            icon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return "The password field cannot be empty";


                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: new Text(
                            "CONFIRM PASSWORD",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                  alignment: Alignment.center,

                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: TextFormField(
                          controller: _signuprepassTextController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "**********",
                            icon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return "The password field cannot be empty";


                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 24.0,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: new FlatButton(
                        child: new Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                  alignment: Alignment.center,
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new FlatButton(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          color: Colors.redAccent,
                          onPressed: () => {},
                          child: new Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0,
                            ),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Expanded(
                                  child: Text(
                                    "SIGN UP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
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
              ],
            ),
          ]),




      );

  }

  gotoLogin() {
    //controller_0To1.forward(from: 0.0);
    _controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  gotoSignup() {
    //controller_minus1To0.reverse(from: 0.0);
    _controller.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  PageController _controller = new PageController(
      initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery
            .of(context)
            .size
            .height,

        child: PageView(
          controller: _controller,
          physics: new AlwaysScrollableScrollPhysics(),
          children: <Widget>[LoginPage(), HomePage(), SignupPage()],
          scrollDirection: Axis.horizontal,
        ));
  }
}