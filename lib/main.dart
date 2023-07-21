import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('عرشیا سطوتی'),
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: _mainBody(),
          ),
        ),
      ),
    );
  }

  Widget _mainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _getHeader(),
          _getIconsRow(),
          SizedBox(height: 12),
          _getSkillLables(),
          SizedBox(height: 12),
          _getResume(),
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/prof.jpg'),
          radius: 70,
        ),
        SizedBox(height: 15),
        Text(
          'عرشیام یه برنامه نویس فلاتر',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'دوست دارم هر برنامه ای که مینویسم رو با همه توی گیتهاب و لینکدین به اشتراک بذارم',
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }

  Widget _getIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blue[800],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareInstagram),
          color: Colors.purple[500],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareGithub),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blue[600],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareWhatsapp),
          color: Colors.green[600],
        ),
      ],
    );
  }

  Widget _getSkillLables() {
    var list = ['Flutter', 'Android', 'Dart', 'Java'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var skill in list)
          Card(
            elevation: 6,
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image(
                    image: AssetImage('images/' + skill.toLowerCase() + '.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(skill),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          _getResumeColumn(),
        ],
      ),
    );
  }

  Widget _getResumeColumn() {
    var textList = [
      '۲ سال سابقه کار با جاوا و اندروید استودیو',
      'شروغ برنامه نویسی فلاتر در سال ۱۴۰۰',
      'تحصیل در رشته نرم افزار کامپیوتر در دانشگاه آزاد',
      'کد نویسی برنامه های مختلف با فلاتر'
          'فریلنسری فلاتر'
          'تسلط به زبان انگلیسی و در حال یادگیری زبان فرانسه',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: double.infinity),
        for (var text in textList) Text(text),
      ],
    );
  }
}
