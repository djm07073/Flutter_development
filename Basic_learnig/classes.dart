//4.0
class Player_ {
  final String name = 'suha'; //
  int xp = 1500;

  void sayHello() {
    print("Hello! my nmae is $name"); //this를 사용할 필요 없음.
  }
}

//4.1
class Player {
  late final String name;
  late int xp;

  Player(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }
  //Player(this.name,this.xp);으로 생성자 작성해도 됨.
  void sayHello() {
    print("Hello! my nmae is $name"); //this를 사용할 필요 없음.
  }
}

//4.2
//가독성을 위해 Named방법을 사용
class Player__ {
  late final String name;
  late int xp;
  late int age;
  late String team;
  Player__({
    required this.name,
    required this.xp,
    required this.age,
    required this.team,
  });
  //새로운 이름으로 객체를 초기화해 객체 생성
  Player__.createBluePlayer({
    required String name,
    required int age,
  })  : //:를 사용해 Player 객체를 초기화했다는 것을 알림.
        this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;
  Player__.createRedPlayer({
    required String name,
    required int age,
  })  : //:를 사용해 Player 객체를 초기화했다는 것을 알림.
        this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  //Player(this.name,this.xp);으로 생성자 작성해도 됨.
  void sayHello() {
    print("Hello! my nmae is $name"); //this를 사용할 필요 없음.
  }
}

//4.6 Enums
//프로그래머의 실수를 막기 위한 장치
enum Team { red, blue }

//4.8 Inheritance
class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

class Player_i extends Human {
  final Team team;

  Player_i({
    required this.team,
    required String name, //이름을 받아서 부모 클래스에게 전달해야함. 이때 콜론과 super를 사용해 전달
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

//Mixin : 생성자가 없는 클래스
class Strong {
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("run!!");
  }
}

class PLayer_m with Strong, QuickRunner {
  //여러개의 클래스의 메서드,변수를 합칠 수 있음.단 그 클래스는 생성자가 없어야 함.

}

void main() {
  var player = Player("suha", 1500);
  print(player.name);
  player.sayHello();
  var player2 = Player("addie", 1500);
  player2.sayHello();

  var player3 = Player__(
    name: "suha",
    xp: 1200,
    team: 'blue',
    age: 24,
  );

  var bluePLayer = Player__.createBluePlayer(
    name: "suha",
    age: 24,
  );
  //4.5 cascade Notation
  var suha = Player__(name: 'suha', xp: 0, age: 24, team: 'blue');
}
