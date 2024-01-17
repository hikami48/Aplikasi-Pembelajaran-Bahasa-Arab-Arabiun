import 'package:project/styles/assets.dart';

class LatihanProfesi1Questions {
  static List questions = [
    {
      "id": 1,//check
      "media_type": "text",
      "media": {"text": "تَاجِرٌ"},//sedang profesi
      "question": "Tulisan diatas dalam bahasa indonesia memiliki arti?",
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Dokter"},
        {"id_answer": 2, "options": "B", "text": "Pedagang"},
        {"id_answer": 3, "options": "C", "text": "Guru"},
        {"id_answer": 4, "options": "D", "text": "Supir"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 2,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icGlorasirumGuruL},
      "question": "Benar atau salah gambar diatas adalah  فَلاَّحٌ?",//mudah profesi
      "answer": 2,
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
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/profesi_1/guru_laki.mp3"},//sulit profesi
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Dokter"},
        {"id_answer": 2, "options": "B", "text": "Pedagang"},
        {"id_answer": 3, "options": "C", "text": "Guru"},
        {"id_answer": 4, "options": "D", "text": "Supir"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {   
      "id": 4,//check
      "media_type": "text",
      "media": {"text": "طَبِيْبٌ"},//sedang profesi
      "question": "Tulisan diatas dalam bahasa indonesia memiliki arti?",
      "answer": 1,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Dokter"},
        {"id_answer": 2, "options": "B", "text": "Pedagang"},
        {"id_answer": 3, "options": "C", "text": "Guru"},
        {"id_answer": 4, "options": "D", "text": "Supir"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    { "id": 5,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icGlorasirumSupirL},
      "question": "Gambar diatas dalam bahasa arab disebut?",//sedang profesi
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "فَلاَّحٌ"},
        {"id_answer": 2, "options": "B", "text": "سَاىِقٌ"},
        {"id_answer": 3, "options": "C", "text": "طَبِيْبٌ"},
        {"id_answer": 4, "options": "D", "text": "مُدَرِسٌ"}
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    }
  ];
}
