import 'package:project/styles/assets.dart';

class LatihanKataBendaQuestions {
  static List questions = [
    {
      "id": 1,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icPapantulis},//sedang kata benda
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "كُرْسِىٌّ"},
        {"id_answer": 2, "options": "B", "text": "سَبُّوْرَةٌ"},
        {"id_answer": 3, "options": "C", "text": "دَفْتَرٌ"},
        {"id_answer": 4, "options": "D", "text": "قَلَمٌ"}
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 2,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icPulpen},//sedang kata benda
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 4,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "كُرْسِىٌّ"},
        {"id_answer": 2, "options": "B", "text": "سَبُّوْرَةٌ"},
        {"id_answer": 3, "options": "C", "text": "دَفْتَرٌ"},
        {"id_answer": 4, "options": "D", "text": "قَلَمٌ"}
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    },
        {
      "id": 3,//false
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/kata_benda/buku.mp3"},//sulit kata benda
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 1,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Catatan"},
        {"id_answer": 2, "options": "B", "text": "Meja"},
        {"id_answer": 3, "options": "C", "text": "Kursi"},
        {"id_answer": 4, "options": "D", "text": "Papan Tulis"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {   
      "id": 4,//false
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/kata_benda/kursi.mp3"},//sulit kata benda
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Catatan"},
        {"id_answer": 2, "options": "B", "text": "Meja"},
        {"id_answer": 3, "options": "C", "text": "Kursi"},
        {"id_answer": 4, "options": "D", "text": "Papan Tulis"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {  "id": 5,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icMeja},//sedang kata benda
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "كُرْسِىٌّ"},
        {"id_answer": 2, "options": "B", "text": "سَبُّوْرَةٌ"},
        {"id_answer": 3, "options": "C", "text": "مَكْتَبٌ"},
        {"id_answer": 4, "options": "D", "text": "قَلَمٌ"}
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    }
  ];
}
