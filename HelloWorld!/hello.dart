void main(List<String> args) {
  int value = 122;

  String firstname = "Ahmad";
  String middlename = "Zani";
  String lastname = "Syechkar";

  String fullname = "$firstname $middlename $lastname";

  List list = ['M', 'I', 'K', 'U'];
  Map map = {
    "waifu1": "miku",
    "waifu2": "otomachi una",
    "waifu3": "mamah zani",
  };

  print("identity : $fullname");
  print("map: $map");
  print("list: $list");
  print("value : $value");
}
