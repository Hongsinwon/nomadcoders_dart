<b>[노마드코더] Dart 📆 2023.02.22 ~ 2023.02.23


<h1> 
  Dart 시작하기 - Flutter 앱 개발을 위한 Dart 배우기
  </br>https://nomadcoders.co/dart-for-beginners
</h1>
  
</br>

## Dart이란 ? 

</br>

>
> 링크 주소 - https://dart.dev/
>
> google이 javascript를를 대체하기 위해 2011년 개발한 웹프로그래밍 언어입니다. </br>
>  자바스크립트의 단점을 보완해서 웹 개발, 특히 웹 프론트엔드 개발의 편의성을 도모하기 위해서 만들어진 언어입니다.  </br>
>  
> 모바일 앱, 웹 앱, 명령어 스크립트, 서버 프로그래밍 등 어떤것이든 다트를 사용해 웹앱이 아닌 네이티브 코드로 안드로이드나 iOS용 앱을 동시에 개발 할 수있습니다. </br>
> 

</br>

- 모든 것들이 전부 Object로 취급합니다.
- List<int>, List<dynamic> 같은 제너릭 type을 지원합니다.
- Types 언어지만 자유도가 존재합니다.
- Public, privatem protected 의 정의가 없으며, _funtion() 으로 정의가 됩니다.
  
  </br>
  
  
 ## Dart의 기본문법
  
  </br>
  
- [var 변수_이름 = 저장할_값]



   ```javascript
   // var = 함수나 메소드 내부에 지역변수를 선언할 때 
    var name1 = '신원';
    name1 = 'sinwon';
      ```
 
 </br>
 
- [변수_타입 변수_이름 = 저장할_값]


   ```javascript
    var name1 = '신원';
    name1 = 'sinwon';
       ```
       
</br>
 
- [여러가지 타입을 가질 수 있는 변수에 쓰는 키워드]


   ```javascript
   dynamic name4;

  name4 = 'sinwon'; // 'sinwon'
  name4 = 12; // 12
  name4 = true; // true
       ```
       
</br>
 
- [Null Safety : 개발자가 null 값을 참조할 수 없도록]


   ```javascript
  String? sinwon = 'sinwon';
  sinwon = null;
  sinwon?.isNotEmpty;

  if (sinwon != null) {
    sinwon.isNotEmpty;
  }
       ```
   
   
</br>
 
 
- [final : 자바스크립트의 const랑 비슷하다.]


   ```javascript
   // final: 컴파일 시점에 바뀌는 값 (API에서 받아온 값, 사용자 입력값)
    final top = 'dog';
    final String doma = 'dog';
       ```
       
</br>
       
- [const : dart에서 const는 compile-time constant 존재한다]


   ```javascript
   // const: 컴파일 시점에 바뀌지 않는 값 (상수)
    const redC = 'game';
       ```
 
 
