class News {
  String? title;
  String? content;
  String? hour;
  String? date;
  String? imageUrl;
  int? watchCount;

  News(
      {this.title,
      this.content,
      this.hour,
      this.date,
      this.imageUrl,
      this.watchCount});

  static List<News> myNews = [
    News(
      title: 'Tailandda rahbaridan norozi ayol neft omborini yoqib yubordi',
      content:
          "Kuzatuv kameralari omborga o‘t qo‘yilgan vaziyatni qayd etgan. Kompaniyaning omborga mas’ul bo‘linmasiga rahbarlik qilgan Enn Sriya aybiga iqror bo‘lib politsiyaga kelgan va ushbu harakat qasos olish uchun qilinganini aytgan. Ayolning so‘zlariga ko‘ra uning boshlig‘i doimiy ravishda unga tanbeh berib kelgan.",
      hour: '09:50',
      date: '12 dekabr 2021',
      imageUrl: "https://s.daryo.uz/wp-content/uploads/2021/12/2691192.jpg",
      watchCount: 520,
    ),
    News(
      title: 'Andijon viloyatida 4 ballik zilzila qayd etildi',
      content:
          "Eslatib o‘tamiz, so‘nggi marta 17-noyabr kuni Qirg‘izistonda sodir bo‘lgan zilzila kuchi Andijon va Namanganda sezilib, magnitudasi 4,6 ballga teng bo‘lgandi. Undan avvalroq, 12-noyabr kuni Andijon viloyatida 4 ballik zilzila qayd etilgandi.",
      hour: '03:40',
      date: '11 dekabr 2021',
      imageUrl: "https://s.daryo.uz/wp-content/uploads/2021/11/1-73.jpg",
      watchCount: 1203,
    ),
    News(
      title: 'AQShda tornado tufayli ko‘plab binolar vayron bo‘ldi. Halok bo‘lganlar soni 50 dan ziyod bo‘lishi mumkin (foto va video)',
      content:
          "Kuzatuv kameralari omborga o‘t qo‘yilgan vaziyatni qayd etgan. Kompaniyaning omborga mas’ul bo‘linmasiga rahbarlik qilgan Enn Sriya aybiga iqror bo‘lib politsiyaga kelgan va ushbu harakat qasos olish uchun qilinganini aytgan. Ayolning so‘zlariga ko‘ra uning boshlig‘i doimiy ravishda unga tanbeh berib kelgan.",
      hour: '03:50',
      date: '10 dekabr 2021',
      imageUrl: "https://s.daryo.uz/wp-content/uploads/2021/12/KMO_096855_27150_1_t245_141859.jpg",
      watchCount: 450,
    ),
    News(
      title: 'Tailandda rahbaridan norozi ayol neft omborini yoqib yubordi',
      content:
      "Kuzatuv kameralari omborga o‘t qo‘yilgan vaziyatni qayd etgan. Kompaniyaning omborga mas’ul bo‘linmasiga rahbarlik qilgan Enn Sriya aybiga iqror bo‘lib politsiyaga kelgan va ushbu harakat qasos olish uchun qilinganini aytgan. Ayolning so‘zlariga ko‘ra uning boshlig‘i doimiy ravishda unga tanbeh berib kelgan.",
      hour: '09:50',
      date: '12 dekabr 2021',
      imageUrl: "https://s.daryo.uz/wp-content/uploads/2021/12/2691192.jpg",
      watchCount: 520,
    ),
    News(
      title: 'Andijon viloyatida 4 ballik zilzila qayd etildi',
      content:
      "Eslatib o‘tamiz, so‘nggi marta 17-noyabr kuni Qirg‘izistonda sodir bo‘lgan zilzila kuchi Andijon va Namanganda sezilib, magnitudasi 4,6 ballga teng bo‘lgandi. Undan avvalroq, 12-noyabr kuni Andijon viloyatida 4 ballik zilzila qayd etilgandi.",
      hour: '03:40',
      date: '11 dekabr 2021',
      imageUrl: "https://s.daryo.uz/wp-content/uploads/2021/11/1-73.jpg",
      watchCount: 1203,
    ),
    News(
      title: 'AQShda tornado tufayli ko‘plab binolar vayron bo‘ldi. Halok bo‘lganlar soni 50 dan ziyod bo‘lishi mumkin (foto va video)',
      content:
      "Kuzatuv kameralari omborga o‘t qo‘yilgan vaziyatni qayd etgan. Kompaniyaning omborga mas’ul bo‘linmasiga rahbarlik qilgan Enn Sriya aybiga iqror bo‘lib politsiyaga kelgan va ushbu harakat qasos olish uchun qilinganini aytgan. Ayolning so‘zlariga ko‘ra uning boshlig‘i doimiy ravishda unga tanbeh berib kelgan.",
      hour: '03:50',
      date: '10 dekabr 2021',
      imageUrl: "https://s.daryo.uz/wp-content/uploads/2021/12/KMO_096855_27150_1_t245_141859.jpg",
      watchCount: 450,
    ),
  ];
}
