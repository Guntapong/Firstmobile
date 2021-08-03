void main() {
  var resultGen = callGen(2000);
  print(resultGen);

  var resultColor = callColor("Yellow");
  print(resultColor);

  callWeb("Google", port: "443", protocal: "https");
}

void callWeb(String web, {String protocal = "http", String port = "80"}) =>
    print("$web $protocal $port");

String callGen(int year) {
  var x = (year >= 1996) ? "Gen Z" : "Gen Y or Upper";

  return x;
}

int callColor([String newColor = "Black"]) {
  List<String> colors = ["red", "blue", "green"];
  colors.add(newColor);
  for (var item in colors) {
    print(item);
  }
  return colors.length;
}
