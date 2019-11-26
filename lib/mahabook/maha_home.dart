import 'package:flutter/material.dart';
import 'package:myanmar_baydin/provider/provider_imports.dart';

class Maha_Home extends StatefulWidget {
  @override
  _Maha_HomeState createState() => _Maha_HomeState();
}

class _Maha_HomeState extends State<Maha_Home> {
  static const kTextHintStyle = TextStyle(fontSize: 12);
  static const kExplainTextStyle = TextStyle(fontSize: 10,color: Colors.black38);
  static const kLabelTextStyle =
      TextStyle(fontSize: 18, fontFamily: 'Lato-regular');

  String birthyear;
  String age;
  static const menuItems = <String>[
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thurseday',
    'Friday',
    'Saturday',
    'Yahuday'
  ];
  final List<DropdownMenuItem<String>> _mdropdrown = menuItems
      .map((String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          ))
      .toList();

  String selectedValue = 'Sunday';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'ကံစမ်းမယ်',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Text('Date of Birth  ',
                        textAlign: TextAlign.center, style: kLabelTextStyle)),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          birthyear = value;
                        });
                      },
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                          filled: true,
                          labelText: 'မြန်မာ သက္ကရာဇ်',
                          hintText: 'မြန်မာ မွေးသက္ကရာဇ်ထည့်ပါ',
                          hintStyle: kTextHintStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
              ],
            ),
            SizedBox(
              height: 24.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Text(
                      'Age',
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle,
                    )),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          age = value;
                        });
                      },
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                          filled: true,
                          labelText: 'အသက် *',
                          hintText: 'လက်ရှိ အသက်ကိုထည့်ပါ ..',
                          hintStyle: kTextHintStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
              ],
            ),
            SizedBox(
              height: 24.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Text('Day',
                        textAlign: TextAlign.center, style: kLabelTextStyle)),
                Expanded(
                    flex: 2,
                    child: DropdownButton(
                        isDense: false,
                        value: selectedValue,
                        items: _mdropdrown,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        })),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Text('')),
                Expanded(
                  flex: 2,
                  child: Text('** ဗုဒ္ဓဟူးနေ့ နေ့လည် ၁၂ နောက် မွေးဖွားသူများကို ရာဟုနေ့ဖွားသူများဟု သတ်မှတ်ကြပါတယ်',style: kExplainTextStyle,)
                ),
              ],
            )
        ,
            SizedBox(
              height: 24.0,
            ),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Text('')),
                Expanded(
                  flex: 2,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                      color: Colors.green,
                      highlightElevation: 3,
                      child: Text('အုံဖွ',style: TextStyle(color: Colors.white,letterSpacing: 10),),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      onPressed: () {
                        int result =
                            int.parse(birthyear) + getGyothet(selectedValue);
                        int i = result % 43;
                        int j = i + int.parse(age);
                        int k = j % 7;

                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Text(getResult(k)),
                                  title: Text('Your result : '),
                                  actions: <Widget>[
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Close'))
                                  ],
                                ));
                      }),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }

  int getGyothet(String day) {
    int i;
    if (day == "Sunday") {
      i = 6;
    } else if (day == "Monday") {
      i = 15;
    } else if (day == "Tuesday") {
      i = 8;
    } else if (day == "Wednesday") {
      i = 17;
    } else if (day == "Thurseday") {
      i = 19;
    } else if (day == "Friday") {
      i = 21;
    } else if (day == "Saturday") {
      i = 10;
    } else if (day == "Yahuday") {
      i = 12;
    }
    return i;
  }

  String getResult(int i) {
    String result;
    if (i == 0) {
      result = 'ထီဆုကြီးပေါက်နိုင်ပါသည် ။\n၆ အစ ၄ အဆုံး ထိုးပါ ...';
    }
    if (i == 1) {
      result = 'ထီဆုသေးပေါက်နိုင်ပါသည် ။\n၇ အစ ၅ အဆုံး ၇ အစ ၅ အဆုံး ထိုးပါ ...';
    }
    if (i == 2) {
      result = 'ထီပေါက်ကိန်း မရှိပါ  ။\n၁ အစ ၆ အဆုံး ထိုးပါ ၆ အစ ၇ အဆုံး...';
    }
    if (i == 3) {
      result = 'ထီပေါက်ကိန်း မရှိပါ  ။\n၂ အစ ၇ အဆုံး | ၅ အစ ၇ အဆုံး...ထိုးပါ';
    }
    if (i == 4) {
      result = 'ထီပေါက်ကိန်း မရှိပါ  ။\n ၃အစ ၁ အဆုံး | ၂ အစ ၁ အဆုံး ထိုးပါ...';
    }
    if (i == 5) {
      result = 'ထီဆုသေးပေါက်နိုင်ပါသည် ။\n၄ အစ ၂ အဆုံး | ၃ အစ ၂ အဆုံး. ထိုးပါ';
    }
    if (i == 6) {
      result = 'ထီဆုကြီးပေါက်နိုင်ပါသည် ။\n၅ အစ ၃ အဆုံး | ၃ အစ ၄ အဆုံး ထိုးပါ';
    }
    return result;
  }
}
