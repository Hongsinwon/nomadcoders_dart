// * 2. DATA TYPES
void main() {
  // * 아래 타입을 포함한 거의 대부분의 타입들이 객체로 이루어져 있다. (함수도 객체) 이것이 Dart가 진정한 객체 지향 언어로 불리는 이유이다.
  String name = 'sinwon';
  bool alive = true;
  int age = 31;
  double money = 69.99;
  num x = 1;
  x = 1.1;

  // * lists : List를 사용하는 2가지 방법
  // * List는 collection if와 collection for를 지원한다. collection if는 List를 만들 때, if를 통해 존재할 수도 안 할 수도 있는 요소를 가지고 만들 수 있다.
  var giveMeFive = true;
  // 1번째 방법
  var numbers1 = [1, 2, 3, 4];
  // 2번째 방법
  List<int> numbers2 = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 7,
  ];

  if (giveMeFive) numbers2.add(5);

  numbers1.add(5);
  numbers2.add(6);

  // * String interpolation : 텍스트 안에 변수를 삽입하는 방법 (interpolation : 써넣기)
  // * String 내부에 따옴표 사용은 \' 혹은 \"를 사용하거나 다른 따옴표로 String 열고 닫기
  // ! 1. 단순 삽입은 따옴표 내부에 $변수명
  // ! 2. 변수를 계산하여 삽입하는 법은 ${계산식}
  // ! 3.  $ 그대로 표시는 escape문자 \$
  var sinwonName = 'sinwon';
  var sinwonAge = 31;
  var greeting =
      "Hello rveryone, my name is $sinwonName and I'm ${sinwonAge - 1}";
  print(greeting);

  // * for : Dart는 조건문(if) 및 반복(for)을 사용하여 컬렉션을 구축하는 데 사용할 수 있는 컬렉션 if 및 컬렉션 for도 제공합니다.
  var oldFriends = ['nico', 'sinwon'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) '💖 $friend',
  ];
  print(newFriends);

  // * map : js에 object, python에 dictionary와 같다.
  // * 일반적으로 맵은 key와 value를 연결하는 객체입니다. 키와 값 모두 모든 유형의 객체가 될 수 있습니다. 각 키는 한 번만 발생하지만 동일한 값을 여러 번 사용할 수 있습니다.
  var player = {
    'name': 'sinwon',
    'xp': 19.99,
    'superpower': false,
  };

  Map<int, bool> player1 = {
    1: true,
    2: false,
  };

  Map<List<int>, bool> player2 = {
    [1, 2]: true,
    [3, 4]: false,
  };

  List<Map<String, Object>> all = [
    {'name': 'nico', 'age': 45, 'xp': 9999.9999},
    {'name': 'sinwon', 'age': 31, 'xp': 19999.9999},
  ];

  // * set :Set에 속한 모든 아이템들이 유니크해야될 때 사용한다. 유니크할 필요가 없다면 List를 사용하면 된다.
  var number1 = {1, 2, 3, 4}; //set
  Set<int> number2 = {1, 2, 3, 4}; //set
  var number11 = [1, 2, 3, 4];

  number1.add(5);
  number1.add(6);
  number1.add(7);
  number11.add(5);
  number11.add(6);
  number11.add(7);

  print(number1); // {1, 2, 3, 4}
  print(number11); // [1, 2, 3, 4, 5, 6, 7]
}
