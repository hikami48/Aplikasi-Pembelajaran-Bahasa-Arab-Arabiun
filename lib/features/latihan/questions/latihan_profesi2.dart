import 'package:project/styles/assets.dart';

class LatihanProfesi2Questions {
  static List questions = [
    {
      "id": 1,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icGlorasirumGuruP}, //Profesi sedang
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "فَلاَّحَةٌ"},
        {"id_answer": 2, "options": "B", "text": "سَاىِقَةٌ"},
        {"id_answer": 3, "options": "C", "text": "مُدَرِسَةٌ"},
        {"id_answer": 4, "options": "D", "text": "مُدَرِسٌ"}
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 2,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icGlorasirumSupirP}, //Profesi sedang
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "فَلاَّحَةٌ"},
        {"id_answer": 2, "options": "B", "text": "سَاىِقَةٌ"},
        {"id_answer": 3, "options": "C", "text": "مُدَرِسَةٌ"},
        {"id_answer": 4, "options": "D", "text": "مُدَرِسٌ"}
      ],
      "answer_type": "arab",
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
        {"id_answer": 1, "options": "A", "text": "Dokter Perempuan"},
        {"id_answer": 2, "options": "B", "text": "Guru Perempuan"},
        {"id_answer": 3, "options": "C", "text": "Guru Laki-laki"},
        {"id_answer": 4, "options": "D", "text": "Supir Laki-laki"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {   
      "id": 4,//check
      "media_type": "text",
      "media": {"text": "فَلاَّحَةٌ"},
      "question": "Benar atau salah tulisan diatas memiliki arti petani Laki-laki?",//profesi mudah
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Benar"},
        {"id_answer": 2, "options": "B", "text": "Salah"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    { "id": 5,//check
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan soal", "resource": "flutter_assets/audio_materi/profesi_1/pedangang_perempuan.mp3"},//sulit profesi
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Pedangang Perempuan"},
        {"id_answer": 2, "options": "B", "text": "Guru Perempuan"},
        {"id_answer": 3, "options": "C", "text": "Petani Perempuan"},
        {"id_answer": 4, "options": "D", "text": "Supir Laki-laki"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    }
  ];
}
