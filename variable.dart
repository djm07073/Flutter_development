void main() {
  //1.0
  print('Hello word');
  //1.1
  String? name = '진수하';
  //항상 같은 변수 타입으로 수정해줘야함
  name = 'suha';
  //1.2
  dynamic my_name; //dynamic type: 무엇이든 가능한 타입
  if (my_name is String) {
    //이렇게하면 어떤 타입일때, 특정한 행동 수행 가능
    //my_name
  }
  //1.3
  name = null; //변수 이름 앞에 ?를 추가해 null값이 될수 있음을 명시
  name?.isNotEmpty; //?를 사용해 변수가 null이 아니하면 메서드를 수행

  //1.4
  final /*String*/ x = 'Addie'; //더 이상 수정할 수 없는 변수

  //1.5
  //late:초기 데이터 없이 선언가능하게 만듦.
  late final String y;
  y = 'nico';

  //1.6
  //const:compile -time constant
  //즉 컴파일하기 전에 고정되어있는 값에 사용
  const String _z = '애디';
}
