// Todo :  Abstract Classes
// * 추상화 클래스는 다른 클래스들이 직접 구현 해야하는 메소드들을 모아놓은 일종의 `청사진`이라 보면 된다.
// * 추상 클래스에서는 기능을 구현하지 않는다.
abstract class Human {
  void walk();
}

// Todo : Enums
// * enum은 우리가 실수하지 않도록 도와주는 타입이다.
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

// Todo : Cascade Notation
class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print("I'm walk");
  }

  void sayHello() {
    print("Hi my name is  $name");
  }
}

class Coach extends Human {
  void walk() {
    print("the coach is walking");
  }
}

// Todo : Inheritance
// * 상속을 하고 super를 이용해 부모 클래스의 생성자를 호출할 수 있다.
class User {
  final String name;

  User({required this.name});

  void sayHello() {
    print("Hi my name is  $name");
  }
}

class Man extends User {
  final Team team;

  Man({required this.team, required String name}) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

// Todo : Mixins
// Mixin은 생성자가 없는 클래스를 의미한다.
// Mixin 클래스는 상속을 할 때 extends를 하지 않고 with 를 사용한다.
// Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점이다.
class Strong {
  final double StrrenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print('ruuuuuuuuuuuuun!');
  }
}

class Tall {
  final double height = 1.99;
}

// ! extends와 차이점은 extend를 하게 되면 확장한 그 클래스는 부모 클래스가 되지만 with는 부모의 인스턴스 관계가 된다. 단순하게 mixin 내부의 프로퍼티를 갖고 오는 거라고 생각하면 쉽다.
class Pinple with Strong, QuickRunner, Tall {
  final String name;

  Pinple({required this.name});

  void sayHello() {
    print("Hi my name is  $name");
  }
}

class Horse with Strong, QuickRunner {}

void main() {
  // Todo : Cascade Notation
  var sinwon = Player(name: 'sinwon', xp: XPLevel.beginner, team: Team.red);
  var potat = sinwon
    // sinwon.name = 'nico';
    // sinwon.xp = 5000;
    // sinwon.team = 'blue';
    ..name = 'nico'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();

  // Todo : Inheritance
  var man = Man(team: Team.red, name: 'sinwon');
  man.sayHello();

  // Todo : Mixins
  var pinple = Pinple(name: 'haha');
}
