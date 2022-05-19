import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'selectExpertise':
              'Select expertise based on your english proficiency',
          'beginner': 'Beginner',
          'medium': 'Medium',
          'expert': 'Expert',
          'proceed': 'Respond',
          'chooseLanguage': 'Choose Your Language',
          'translateSimpleSentence': 'Translate the given sentence',
          'continue': 'Continue',
          'howAreYou': 'Hello! How are you',
        },
        'hi_IN': {
          'hello': 'नमस्ते दुनिया',
          'selectExpertise':
              'अपनी अंग्रेजी दक्षता के आधार पर विशेषज्ञता का चयन करें',
          'beginner': 'शुरुआत',
          'medium': 'मध्यम',
          'expert': 'विशेषज्ञ',
          'proceed': 'आगे बढ़ना',
          'chooseLanguage': 'अपनी भाषा चुनिए',
          'translateSimpleSentence': 'दिए गए वाक्य का अनुवाद करें',
          'continue': 'जारी रखें',
          'howAreYou': 'नमस्ते! क्या हाल है',
        },
        'ta_IN': {
          'hello': 'வணக்கம் உலகம்',
          'selectExpertise':
              'உங்கள் ஆங்கில புலமையின் அடிப்படையில் நிபுணத்துவத்தைத் தேர்ந்தெடுக்கவும்',
          'beginner': 'தொடக்கக்காரர்',
          'medium': 'நடுத்தர',
          'expert': 'நிபுணர்',
          'proceed': 'தொடரவும்',
          'chooseLanguage': 'உங்கள் மொழியை தேர்வு செய்யவும்',
          'translateSimpleSentence':
              'கொடுக்கப்பட்ட வாக்கியத்தை மொழிபெயர்க்கவும்',
          'continue': 'தொடரவும்',
          'howAreYou': 'வணக்கம்! நீங்கள் எப்படி இருக்கிறீர்கள்',
        },
      };
}
