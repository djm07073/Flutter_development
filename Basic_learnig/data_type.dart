void main() {
  //2.0
  //String,int,double,..:모두 object임.

  //2.1
  bool giveMeFive = true;
  List<int> numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  //if(giveMeFive){
  //  numbers.add(5)
  //}
  print(numbers);

  numbers.first; //다양한 메서드가 있음.
  //2.3
  String name = 'suha';
  int age = 22;
  String greeting =
      "Hello everyone, my name is $name, nice to meet you!, I\'m ${age + 2}";
  print(greeting);
  //2.4
  List<String> oldFriends = [
    'nico',
    'lynn',
  ];
  List<String> newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "$friend",
  ];
  print(newFriends);

  //2.5
  //Map key:value의 배열
  Map<String, Object> player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  Map<List<int>, bool> num = {
    [1, 2, 3, 4, 5]: true,
  };
  //key와 value로 대응되는 값을 정할때 class를 사용해하는 것을 추천

  //2.6
  //set은 유니크한 값들만 갖고 있음.
  Set<int> numbers_ = {
    1,
    2,
    3,
    4,
  };
  numbers_.add(1);
  print(numbers_);
}
