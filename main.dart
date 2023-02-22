// * 1. VARIABLES
void main() {
  print('hello world');

  // * var = 함수나 메소드 내부에 지역변수를 선언할 때
  // * var를 사용하는게 dart 스타일가이드의 권장 방식이다.
  // ! var 변수_이름 = 저장할_값;
  var name1 = '신원';
  name1 = 'sinwon';

  // * class에서 변수나 property를 선언할 때는 타입을 지정(String, Int ...)
  // ! 변수_타입 변수_이름 = 저장할_값;
  String name2 = '신원';

  // * dynamic : 여러가지 타입을 가질 수 있는 변수에 쓰는 키워드이다. (해당 변수의 타입을 알 수 없을 때 주로 사용)
  // * 변수를 선언할 때 dynamic을 쓰거나 값을 지정하지 않으면 dynamic 타입을 가진다.
  // * dynamic 타입은 언제 사용될까? 대표적으로 타입을 알기가 힘들 때 사용한다. 예를 들어 json을 작업할 때 같은 경우다.
  // * 하지만 dynamic 타입은 다양한 타입을 가질 수 있기 때문에 `정말 필요할 때만` 사용해야 한다. (위험 방지)
  var name3;
  dynamic name4;

  name3 = 'sinwon';
  name4 = 'sinwon';
  name3 = 12;
  name4 = 12;
  name3 = true;
  name4 = true;

  //if (name3 is String) {name3.;}
  //if (name4 is int) {name4.;}

  // ! Null Safety : 개발자가 null 값을 참조할 수 없도록 하는 것이다.
  // * String뒤에 ?를 붙여줌으로서 name이 String 또는 null이 될 수 있다고 명시해준 것입니다.
  // * 기본적으로 모든 변수는 non-nullable(null이 될 수 없음)이다.
  String? sinwon = 'sinwon';
  sinwon = null;
  sinwon?.isNotEmpty;

  if (sinwon != null) {
    sinwon.isNotEmpty;
  }

  // * final : var대신 final로 변수를 만들게 되면 이 변수는 수정할 수 없게 된다. (딱 한 번만 설절될 수 있음)
  // * 자바스크립트의 const랑 비슷하다. 자바스크립트의 상수는 dart의 fianl과 같다.
  // * final를 쓰는 대표적인 경우는 API fetching, 사용자가 화면에서 입력해야하는 값 등이 있다.
  final top = 'dog';
  final String doma = 'dog';
  // ! top = 'cat'; * 수정 불가, 자바사크립트 const 와 같은 기능

  // * late : 초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다.
  // * flutter로 data fecthing을 할 때 유용하다.
  // * late 변수를 만들고, API에 요청을 보낸 뒤에 API에서 값을 보내주면 그 응답값을 late변수에 넣어 사용할 수 있다.
  late final String mimi;
  // ! 변수 먼저 생성하고 추후 데이터 추가
  // ! late 변수는 값을 할당되기 전에는 접근할 수 없다.
  mimi = 'dog';
  print(mimi);

  // ! fianl 키워드를 혼자 사용하면 바로 선언을 해야하지만 late 키워드를 사용한다면 선언이 아닌 할당을 하더라도 그 변수의 수정을 막을 수 있기 때문이다.

  // * const : dart에서 const는 compile-time constant를 만들어준다.(const는 컴파일할 때 알고 있는 값을 사용)
  // * dart의 const는 compoile-time constant를 만들어 준다.
  // * 만약 어떤 값인지 모르고, 그 값이 API로부터 오거나 사용자가 화면에서 입력해야 하는 값이라면 그건 const가 아닌 final이나 var가 되어야 한다.
  // * const와 fianl의 가장 큰 차이점은 컴파일이 되는 시점에 그 값을 알 수 있는지 없는지의 차이다.
  const redC = 'game';

  // ! const: 컴파일 시점에 바뀌지 않는 값 (상수)
  // ! final: 컴파일 시점에 바뀌는 값 (API에서 받아온 값, 사용자 입력값)
}
