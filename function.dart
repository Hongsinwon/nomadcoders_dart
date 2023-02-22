// * function

// Todo : function
// * 1. 함수 첫번째 방법
String sayHello1(String value) {
  return "Hello $value nice to meet you!";
}

// * 2. 함수 두번째 방법
// * 하나의 표현식만 포함하는 함수의 경우 아래와 같이 단축 구문을 사용할 수 있습니다.
String sayHello2(String value) => "Hello $value nice to meet you!";

// Todo : named parameters
// ! position named parameters
String hi1(String name, int age, String country) {
  return "Hello $name, you are $age, and you come from $country.";
}

// ! defulte value parameters
String hi2({String name = 'anon', int age = 99, String country = 'cuba'}) {
  return "Hello $name, you are $age, and you come from $country.";
}

// ! required을 사용하면 null safety를 적용할 수 있다.(required를 쓰면 값이 반드시 있어야 한다.)
String hi3({required String name, required int age, required String country}) {
  return "Hello $name, you are $age, and you come from $country.";
}

// Todo : Optional Positional Parameters
// * [] 은 optional, positional parameter를 명시할 때 사용된다.
// * name, age는 필수값이고 []를 통해 country를 optional값으로 지정해줄 수 있다.
String option(String name, int age, [String? country = 'cuba']) {
  return "Hello $name, you are $age, and you come from $country.";
}

// Todo : QQ Operator ?? ?=
// * ?? : ?? 연산자를 이용하면 왼쪽 값이 null인지 체크해서 null이 아니면 왼쪽 값을 리턴하고 null이면 오른쪽 값을 리턴한다.
String qqName1(String? name) {
  //return name != null ? name.toLowerCase() : 'ANON';
  return name?.toLowerCase() ?? 'ANON';
}

// * ??= 연산자를 이용하면 변수 안에 값이 null일 때를 체크해서 값을 할당해줄 수 있다.
String qqName2() {
  String? name1;
  name1 ??= 'nico';
  name1 = null;
  name1 ??= 'another';
  return name1;
}

String qqName3() {
  String? name1;
  name1 ??= 'nico';
  name1 ??= 'another';
  return name1;
}

// Todo :  Typedef
// * 자료형에 사용자가 원하는 alias를 붙일 수 있게 해준다. (자료형 이름의 별명을 만들 때 사용)
typedef ListOfInts = List<int>;
ListOfInts revers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;
String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

// * Dart는 진정한 객체 지향 언어이므로 함수도 객체이며 타입이 Function입니다. 이는 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미합니다.
void main() {
  // Todo : function
  print(sayHello1('sinwon'));
  print(sayHello2('nico'));

  // Todo : named parameters
  print(hi1('sinwon', 31, 'korea'));
  print(hi2(age: 31, name: 'sinwon', country: 'korea'));
  print(hi2(age: 31));
  print(hi3(age: 31, name: 'sinwon', country: 'korea'));

  // Todo : Optional Positional Parameters
  print(option('sinwon', 31));

  // Todo : QQ Operator
  print(qqName1('sinwon'));
  print(qqName1(null));
  print(qqName2());
  print(qqName3());

  // Todo :  Typedef
  print(revers([1, 2, 3]));
  print(sayHi({'name': 'nico'}));
}
