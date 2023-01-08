//3.1
void sayHello(String name) {
  print("Hello my name is $name");
}

//한줄 짜리 함수면 return을 =>로 대체 가능
//3.2
//defalt value를 설정할 수 있음.{ 매개변수1 =값, 매개변수2 = 값,...}
String Info({
  String name = 'anon',
  int age = 25,
  String country = 'wakanda',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

//필요한 매개변수 requried를 통해 명명할 수 있음.
String Info1({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country";
}

//3.3
//별로 안씀
String Info2({
  required String name,
  required int age,
  String? country = 'cuba',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

//3.4
//?: 삼항 연산자
//?? :좌항이 null이면 우항, 좌황이 null이 아니면 좌항
//??=: 해당 변수가 null이면 할당
String capitalizeName(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(Info(
    //named parameter
    name: 'suha',
    age: 24,
    country: 'Seoul_KR',
  ));

  String? name;
  name ??= 'nico';
  name = null;
  name ??= 'another';
}
