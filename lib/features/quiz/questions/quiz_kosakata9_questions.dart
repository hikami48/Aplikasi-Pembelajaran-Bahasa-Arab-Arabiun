import 'package:project/styles/assets.dart';

class QuizKosakata9Questions {
  static List questions = [
    {
      "id": 1,//check
      "media_type": "text",
      "media": {"text": "غَنَمٌ"},
      "question": "Tulisan diatas dalam bahasa indonesia memiliki arti?",//hewan sedang
      "answer": 1,
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
      "id": 2,//check
      "media_type": "image",          
      "media": {"resource": AppAssets.icSekolah},//kata benda sedang
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 2,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "دَفْتَرٌ"},
        {"id_answer": 2, "options": "B", "text": "مَدْرَسَةٌ"},
        {"id_answer": 3, "options": "C", "text": "سَبُّوْرَةٌ"},
        {"id_answer": 4, "options": "D", "text": "نَافِذَةٌ"}
      ],
      "answer_type": "arab",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 3,//check
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan", "resource": "flutter_assets/audio_materi/profesi_2/pedagang_perempuan.mp3"},//profesi sulit
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Pedagang Laki-laki"},
        {"id_answer": 2, "options": "B", "text": "Supir Laki-laki"},
        {"id_answer": 3, "options": "C", "text": "Pedagang perempuan"},
        {"id_answer": 4, "options": "D", "text": "Dokter perempuan"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 4,//check
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan", "resource": "flutter_assets/audio_materi/profesi_2/doktor_perempuan.mp3"},//profesi sulit
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 4,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Pedagang Perempuan"},
        {"id_answer": 2, "options": "B", "text": "Supir Perempuan"},
        {"id_answer": 3, "options": "C", "text": "Supir Laki-laki"},
        {"id_answer": 4, "options": "D", "text": "Dokter Perempuan"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 5,//check
      "media_type": "text",
      "media": {"text": "نَافِذَةٌ"},
      "question": "Tulisan diatas dalam bahasa indonesia memiliki arti?", //sedang kata benda
      "answer": 4,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Sekolah"},
        {"id_answer": 2, "options": "B", "text": "Meja"},
        {"id_answer": 3, "options": "C", "text": "Penghapus"},
        {"id_answer": 4, "options": "D", "text": "Jendela"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 6,//check
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
      "id": 7,//check
      "media_type": "text",
      "media": {"text": "فَلاَّحَةٌ"},
      "question": "Benar atau salah gambar diatas memiliki arti petani perempuan?",//profesi mudah
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
      "id": 8,
      "media_type": "image",
      "media": {"resource": AppAssets.icPenghapus},//kata benda mudah
      "question": "Benar atau salah gambar diatas adalah  مِمْسَحَةٌ?",
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
      "id": 9,//check
      "media_type": "audio",
      "media": {"text": "Klik untuk mendengarkan", "resource": "flutter_assets/audio_materi/profesi_1/supir_laki.mp3"},//profesi sulit
      "question": "Pada suara diatas dalam bahasa indonesia disebut?",
      "answer": 3,
      "answers": [
        {"id_answer": 1, "options": "A", "text": "Pedagang Laki-laki"},
        {"id_answer": 2, "options": "B", "text": "Petani Perempuan"},
        {"id_answer": 3, "options": "C", "text": "Supir Laki-laki"},
        {"id_answer": 4, "options": "D", "text": "Supir Perempuan"}
      ],
      "answer_type": "indo",
      "user_answer": 0,
      "score": 0
    },
    {
      "id": 10,//check
      "media_type": "image",
      "media": {"resource": AppAssets.icKerbau},//hewan sedang
      "question": "Gambar diatas dalam bahasa arab disebut?",
      "answer": 4,
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
  ];
}
