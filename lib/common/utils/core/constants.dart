class FirestoreCollections {
  static const String users = "users";
  static const String sellerCompanyInfo = "seller_company_info";
}

const countries = {
  "україна",
  "украина",
  "польша",
  "польща",
  "турция",
  "туреччина",
  "китай",
  "немецкий",
  "німеччина",
  "ukraine",
  "germany",
  "china",
  "poland",
  // добавь любые нужные
};


String getTextMonthFromNumber(int number) {
  switch (number) {
    case 1:
      return "Січня";
    case 2:
      return "Лютого";
    case 3:
      return "Березня";
    case 4:
      return "Квітня";
    case 5:
      return "Травня";
    case 6:
      return "Червня";
    case 7:
      return "Липня";
    case 8:
      return "Серпня";
    case 9:
      return "Вересня";
    case 10:
      return "Жовтня";
    case 11:
      return "Листопада";
    case 12:
      return "Грудня";
  }
  return "";
}