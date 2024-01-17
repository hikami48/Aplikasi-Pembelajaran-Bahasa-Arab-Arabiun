import 'package:project/styles/assets.dart';

class LatihanKarakterQuestions {
  static List questions = [
    {
      "id": 1,//check
      "media_type": "text",
      "media": {"text": "مُجْتَهِدٌ"},//sedang karakter
      "question": "Tulisan diatas dalam bahasa indonesia memiliki arti?",
      "answer": 4,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Mandiri"},
        {"id_answer": 2, "options": "B", "text": "Santun"},
        {"id_answer": 3, "options": "C", "text": "jujur"},
        {"id_answer": 4, "options": "D", "text": "Gigih"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },

    {
      "id": 2,//check
      "media_type": "text",
      "media": {"text": "مُسْتَقِلٌّ"},//mudah karakter
      "question": "Benar atau salah tulisan diatas memiliki arti mandiri?",
      "answer": 1,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Benar"},
        {"id_answer": 2, "options": "B", "text": "Salah"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
        {
      "id": 3,//check
      "media_type": "text",
      "media": {"text": "صِدْقٌ"},//mudah karakter
      "question": "Benar atau salah tulisan diatas memiliki arti jujur?",
      "answer": 1,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Benar"},
        {"id_answer": 2, "options": "B", "text": "Salah"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {   "id": 4,//false
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/sifat_rosul/santun.mp3"},//sulit kata benda
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Mandiri"},
        {"id_answer": 2, "options": "B", "text": "Santun"},
        {"id_answer": 3, "options": "C", "text": "Gigih"},
        {"id_answer": 4, "options": "D", "text": "Cerdas"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {   "id": 5,//false
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/sifat_rosul/cerdas.mp3"},//sulit kata benda
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 4,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Mandiri"},
        {"id_answer": 2, "options": "B", "text": "Santun"},
        {"id_answer": 3, "options": "C", "text": "Gigih"},
        {"id_answer": 4, "options": "D", "text": "Cerdas"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    }
  ];
}
