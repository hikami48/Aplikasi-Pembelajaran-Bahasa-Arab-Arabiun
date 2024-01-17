import 'package:project/styles/assets.dart';

class LatihanHewanTernakQuestions {
  static List questions = [
    {
      "id": 1,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icDomba},//hewan sedang
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "دَجَاخٌ"},
        {"id_answer": 2, "options": "B", "text": "غَنَمٌ"},
        {"id_answer": 3, "options": "C", "text": "بَقَرَةٌ"},
        {"id_answer": 4, "options": "D", "text": "جَامُوسٌ"}
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    },
    {     
      "id": 2,//check
      "media_type": "text",
      "media": {"text": "دَجَاجٌ"},
      "question": "Tulisan diatas dalam bahasa indonesia memiliki arti?",//hewan sedang
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Domba"},
        {"id_answer": 2, "options": "B", "text": "Sapi"},
        {"id_answer": 3, "options": "C", "text": "Ayam"},
        {"id_answer": 4, "options": "D", "text": "Kambing"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
        {
      "id": 3,//false
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/hewan_ternak/kambing.mp3"},//sulit kata benda
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 4,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Domba"},
        {"id_answer": 2, "options": "B", "text": "Sapi"},
        {"id_answer": 3, "options": "C", "text": "Ayam"},
        {"id_answer": 4, "options": "D", "text": "Kambing"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {   
      "id": 4,//false
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/hewan_ternak/Unta.mp3"},//sulit kata benda
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 1,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Unta"},
        {"id_answer": 2, "options": "B", "text": "Sapi"},
        {"id_answer": 3, "options": "C", "text": "Kerbau"},
        {"id_answer": 4, "options": "D", "text": "Kambing"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    { "id": 5,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icSapi},//hewan sedang
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "دَجَاخٌ"},
        {"id_answer": 2, "options": "B", "text": "غَنَمٌ"},
        {"id_answer": 3, "options": "C", "text": "بَقَرَةٌ"},
        {"id_answer": 4, "options": "D", "text": "جَامُوسٌ"}
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    }
  ];
}
