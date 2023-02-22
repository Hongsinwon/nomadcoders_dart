// * Dart Class

// Todo : Class
// * dart에서 property를 선언할 때는 타입을 사용해서 정의한다.
class Player {
  String name = 'sinwon';
  final int age = 31;
  int xp = 1500;

  void sayHello() {
    var name = '123';
    // ! class method안에서는 this를 쓰지 않는 것을 권장한다.
    print("Hi my name is ${this.name} $name");
  }
}

// Todo : Constructors
// * dart에서 생성자(constructor) 함수는 클래스 이름과 같아야 한다.
class User {
  // late final String name;
  // late int xp;

  // User(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  final String name;
  int xp;

  User(this.name, this.xp);

  void sayHello() {
    print("Hi my name is  $name");
  }
}

// Todo : Named Constructor Parameters
class People {
  final String name;
  int xp;
  String team;
  int age;

  People({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hi my name is  $name");
  }
}

// Todo : Named Constructors
class Pinple {
  final String name;
  int xp, age;
  String team;

  Pinple({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Pinple.createRedPinple({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  Pinple.createBluePinple(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 1500;

  void sayHello() {
    print("Hi my name is  $name");
  }
}

// ! Recap
class Recap {
  final String name;
  int xp;
  String team;

  Recap.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is  $name");
  }
}

void main() {
  // Todo : Class
  var player = Player();
  print(player.name);
  player.name = 'nico';
  print(player.name);
  player.sayHello();

  // Todo : Constructors
  var user = User('sinwon', 1500);
  var user1 = User('nico', 3000);
  user.sayHello();
  user1.sayHello();

  // Todo : Named Constructor Parameters
  var people = People(
    name: 'sinwon',
    xp: 1500,
    team: 'red',
    age: 31,
  );

  var people1 = People(
    name: 'nico',
    xp: 3000,
    team: 'blue',
    age: 45,
  );

  people.sayHello();
  people1.sayHello();

  // Todo : Named Constructors
  var pinple = Pinple.createRedPinple(
    name: 'sinwon',
    age: 31,
  );

  var pinple1 = Pinple.createBluePinple('nico', 45);

  // ! Recap
  var apiData = [
    {
      "name": 'sinwon',
      'team': 'red',
      'xp': 0,
    },
    {
      "name": 'nico',
      'team': 'red',
      'xp': 0,
    },
    {
      "name": 'lyun',
      'team': 'red',
      'xp': 0,
    }
  ];

  apiData.forEach((playeerJson) {
    var recap = Recap.fromJson(playeerJson);
    recap.sayHello();
  });
}
