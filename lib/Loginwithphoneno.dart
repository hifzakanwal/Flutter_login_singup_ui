import 'package:firebase_auth/Component.dart';
import 'package:firebase_auth/verifycodescreen.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class loginwithphoneno extends StatefulWidget {
  const loginwithphoneno({super.key});

  @override
  State<loginwithphoneno> createState() => _loginwithphonenoState();
}

class _loginwithphonenoState extends State<loginwithphoneno> {
  var countrycode = '+92';
  @override
  Widget build(BuildContext context) {
    final phonecon = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Continue with phone"),
        ),
        backgroundColor: bcolor,
      ),
      body: Column(children: [
        SizedBox(
          height: 70,
        ),
        Text(
          "You'll receive a 6 Digit code \n to verify next",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: phonecon,
            decoration: InputDecoration(
                filled: true,
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: bcolor)),
                // enabledBorder:
                //     UnderlineInputBorder(borderSide: BorderSide(color: bcolor)),
                fillColor: Colors.white,
                hintText: "Enter you phone number",
                prefix: TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black)),
                    onPressed: () {
                      showCountryPicker(
                          context: context,
                          countryListTheme: CountryListThemeData(
                              inputDecoration: InputDecoration(
                            hintText: "Search",
                            labelText: "Search country code",
                          )),
                          favorite: ['pakistan'],
                          onSelect: (Country c) {
                            countrycode = c.phoneCode.toString();
                            setState(() {});
                          });
                    },
                    child: Text(
                      countrycode,
                      style: TextStyle(fontSize: 17),
                    ))),
          ),
        ),
        roundbutton(
            title: "Continue",
            tapfun: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => verifycode()));
            }),
      ]),
    );
  }
}
