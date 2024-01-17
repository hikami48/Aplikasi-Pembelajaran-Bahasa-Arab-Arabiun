import 'package:project/styles/assets.dart';

class LatihanMuannasMudzakkarQuestions {
  static List questions = [
    {
      "id": 1,
      "media_type": "image",
      "media": {"resource": AppAssets.icPenghapus},//kata benda mudah
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "نَافِذَةٌ"},
        {"id_answer": 2, "options": "B", "text": "مِمْسَحَةٌ"},
        {"id_answer": 3, "options": "A", "text": "مَدْرَسَةٌ"},
        {"id_answer": 4, "options": "A", "text": "سَبُّوْرَةٌ"},

      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 2,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icJendela}, 
      "question": "Gambar diatas dalam kata muannats disebut?",
      "answer": 1,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "نَافِذَةٌ"},
        {"id_answer": 2, "options": "B", "text": "مِمْسَحَةٌ"},
        {"id_answer": 3, "options": "A", "text": "مَدْرَسَةٌ"},
        {"id_answer": 4, "options": "A", "text": "سَبُّوْرَةٌ"},
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    },
        {
      "id": 3,//check
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/muannas_mudzakkar/sekolah.mp3"},//sulit profesi
      "question": "Pada suara muannats diatas dalam bahasa indonesia disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Jendela"},
        {"id_answer": 2, "options": "B", "text": "Kursi"},
        {"id_answer": 3, "options": "C", "text": "Papan Tulis"},
        {"id_answer": 4, "options": "D", "text": "Catatan"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {   
      "id": 4,//check
      "media_type": "text",
      "media": {"text": "ة"},
      "question": "Benar atau salah huruf diatas untuk penggunaan kata muannats?",//profesi mudah
      "answer": 1,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Benar"},
        {"id_answer": 2, "options": "B", "text": "Salah"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    { "id": 5,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icBuku}, //Profesi sedang
      "question": "Gambar diatas dalam kata mudzakkar disebut?",
      "answer": 4,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "نَافِذَةٌ"},
        {"id_answer": 2, "options": "B", "text": "مِمْسَحَةٌ"},
        {"id_answer": 3, "options": "A", "text": "مَدْرَسَةٌ"},
        {"id_answer": 4, "options": "A", "text": "دَفْتَرٌ"},
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    }
  ];
}
