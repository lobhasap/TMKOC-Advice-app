import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(AdviceApp());
}

class AdviceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF185695),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AdviceScreen(),
    );
  }
}

class AdviceScreen extends StatefulWidget {
  @override
  _AdviceScreenState createState() => _AdviceScreenState();
}

class _AdviceScreenState extends State<AdviceScreen> {
  final List<String> advices = [
    'Jasta serious nahi hot te',
    'Mmmm euha',
    'Ok done',
    'Udya bhetu',
    'Jhala tata',
    '  Bindaas raho, tension leneka nahi.	',
    '  Masti kar yaar, zindagi ek baar milti hai.	',
    '  No worries, sab theek ho jayega.	',
    'Chill maar, life is too short to stress.	',
    'Kya fark padta hai, chhod yaar.	',
    'Jee le zara, apne tarike se.	',
    'Bas kar yaar, fikar na kar.	',
    'Relax kar, life ko enjoy kar.	',
    'Udaas mat ho, sab acha hoga.	',
    'Chal na, aaj kuch alag karte hai.	',
    'Jeevan ka tadka lagao, maza lo.	',
    'Aaram se rehne ka, tension nahi lene ka.	',
    'Koi baat nahi, agle round mein phodenge.	',
    'Chhod yaar, tension mat le.	',
    'Thoda chill maar, sab theek ho jayega.	',
    'Life ka scene simple rakh, mast raho.	',
    'Bas kar yaar, aaraam se jee le.	',
    'Next level pe ja, no tension, only enjoyment.	',
    'Aaja yaar, kal milte hai.	',
    'Bindass ho ja, sab ho jayega.	',
    'Life ko light le, sab badhiya hoga.	',
    'Kal ka tension mat lo, aaj ko enjoy karo.	',
    'Chal na, kal ke liye plan bana lete hai.	',
    'Hanso yaaro, hasi ka koi muhalla nahi hai.	',
    'Khush raho, sab kuch sambhal lenge.	',
    'Bindass jio, duniya dekhe bina na maro.	',
    'Timepass kar yaar, tension se kya milega?	',
    'Jindagi ki race mein mat bhago, mauj uthao.	',
    'Yaar, tension-free zone mein rehna seekho.	',
    'Zindagi ko thoda light le, khushiyan badhao.	',
    'Aaj ka din, aaj ka maza, kal ki fikar nahi.	',
    'Jeevan ke rangon mein kho jao, tension bhool jao.	',
    'Mauj masti kar, life mein rang bhar.	',
    'Chill kar yaar, sab manage ho jayega.	',
    'Jindagi ka funda simple hai, bas jee le.	',
    'Chhod yaar, jhagda nahi karne ka.	',
    'Mauj kar, zindagi ek hai.	',
    'No tension, sirf masti.	',
    'Bas kar yaar, life ko enjoy kar.	',
    'Thoda chill maar, sab badhiya hoga.	',
    'Zindagi ko light le, dil se jiyo.	',
    'Aaj ka scene hai, bindaas jee lo.	',
    'Timepass kar, hass hass ke jeena hai.	',
    'Jeevan ke maze lo, tension nahi chahiye.	',
    'Bindass raho, fikar ko side me rakh do.	',
    'Hanso yaaro, muskurahat se din guzaro.	',
    'Zindagi ka maza lo, regret mat karo.	',
    'Tension-free zone mein rehna sikho, khush raho.	',
    'Aaj ka din hai, kal ki fikar nahi.	',
    'Life ka funda hai, jee bhar ke jiyo.	',
    'Aaram se raho, dil khush rahega.	',
    'Masti karo yaar, duniya saath hai.	',
    'Kya sochega log, jeevan apne style mein jio.	',
    'Bina tension ke jiyo, khushiyon se bharo.	',
    'Zindagi ke rangon mein rang jao, mauj karo.	',
    'Jeevan ka trip lo, apne man ki karo.	',
    'Chinta na karo, life hai yaaro.	',
    'Aaj kuch alag karte hai, mauj kar lete hai.	',
    'Bindass jio, dil se haste raho.	',
    ' Jeevan ka nasha lo, khushiyo ka ghoont piyo.	',
    'Hassi ka injection laga lo, tension door ho jayega.	',
    ' Chill kar yaar, tension se kya milega?	',
    'Mauj uthao, jindagi ka khel khelo.	',
    ' Dil se jiyo, hansi se bharo.	',
    'Thoda hatke socho, zindagi ka maza badh jayega.	',
    'Jeevan ko enjoy kar, tension ko avoid kar.	',
    'Chhod yaar, pareshaniya door ho jayegi.	',
    'Dil ki suno, khushi se jee lo.	',
    '  Masti karne ka time hai, tension nahi.	',
    '  Aaj ka din hai, khushiyan le aao.	',
    'Zindagi ki journey lo, masti mein beh jao.	',
    'Bina fikar ke jee lo, azaad ho jao.	',
    'Jindagi ka mantra hai, haste raho.	',
    ' Hassi ka dose lo, tension ko dispose karo.	',
    'Masti kar yaar, tension se kya milega?	',
    'Mauj uthao, duniya ko nachao.	',
    'Thoda cool bano, zindagi ka swag badhao.	',
    'No tension, only enjoyment ka funda apnao.	',
    'Dil se jiyo, hassi se bharo.	',
    'Aaj ki raat hai, hassi bharo.	',
    'Masti karne ka time hai, bindaas jee lo.	',
    'Jeevan ki ride lo, hassi se saath do.	',
    'Zindagi ka flavor badhao, tension ko ignore karo.	',
    'Bina fikar ke jee lo, har pal ka maza lo.	',
    'Mauj karne ka style apnao, jindagi ko mauj se guzaro.	',
    'Hassi ka power on, tension ka power off.	',
    'Chhod yaar, life ko thoda easy banao.	',
    'Masti ke rango mein rang jao, tension ko bhul jao.	',
    'Aaj ki sham hai, khushiyan le aao.	',
    'Hassi ka hungama chalao, tension ko bhagao.	',
    'Zindagi ka mantra hai, hassi se jeene ka.	',
    'Bindass jio, hassi se bharpoor jio.	',
    'Jeevan ki daldal se bahar niklo, masti ka fayda uthao.	',
    'Dil se muskurao, jeevan ko rang bharo.	',
    'Thoda hatke socho, hassi bharo.	',
    'Tension-free mode on, hassi ka volume badhao.	',
    'Hassi ka nasha lo, khushiyo ka ghoont piyo.	',
    'Chinta chhodo, hassi ka dhamal chalao.	',
    'Jindagi ko enjoy kar, tension ko destroy kar.	',
    'Hassi ka dose lo, tension se door ho jao.	',
    'Masti ke josh mein rang jao, tension bhool jao.	',
    'Aaj ka din hai, hasi ke saath jiyo.	',
    'Zindagi ki masti lo, tension ko bhool jao.	',
    'Hassi se bharo, tension ko harao.	',
    'Chill kar yaar, hassi ke saath relax kar.	',
    'Bina fikar ke jee lo, hassi se jiyo.	',
    'Jeevan ka maza lo, hassi ka saath do.	',
    'Aaj ki sham hai, khushiyan le aao.	',
    'Hassi ka hungama chalao, tension ko bhagao.	',
    'Zindagi ka mantra hai, hassi se jeene ka.	',
    'Bindass jio, hassi se bharpoor jio.	',
    'Jeevan ki daldal se bahar niklo, masti ka fayda uthao.	',
    'Dil se muskurao, jeevan ko rang bharo.	',
    'Thoda hatke socho, hassi bharo.	',
    ' Tension-free mode on, hassi ka volume badhao.	',
    'Hassi ka nasha lo, khushiyo ka ghoont piyo.	',
    'Chinta chhodo, hassi ka dhamal chalao.	',
    'Jindagi ko enjoy kar, tension ko destroy kar.	',
    'Hassi ka dose lo, tension se door ho jao.	',
    'Masti ke josh mein rang jao, tension bhool jao.	',
    'Aaj ka din hai, hasi ke saath jiyo.	',
    'Zindagi ki masti lo, tension ko bhool jao.	',
    'Hassi se bharo, tension ko harao.	',
  ];

  String randomAdvice = '';

  String generateRandomAdvice() {
    final random = Random();
    return advices[random.nextInt(advices.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the back button
        title: Text(
          'Advice App',
          style: TextStyle(fontSize: 20.0),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (randomAdvice.isNotEmpty)
              Card(
                color: Color(0xFF5B006C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    randomAdvice,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            SizedBox(height: 16.0),
            ElevatedButton.icon(
              icon: Image.asset(
                'assets/image.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
              label: Text(
                '',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () {
                setState(() {
                  randomAdvice = generateRandomAdvice();
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF5B006C),
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
