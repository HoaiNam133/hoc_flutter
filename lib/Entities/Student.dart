class Student {
  final String id;
  final String name;
  final int age;
  static List<Student> students=[
    Student(id: "01",name: "A",age: 20),
    Student(id: "02",name: "B",age: 21),
    Student(id: "03",name: "C",age:10),
  ];
  List<Student> getAgerThan(int age){
    return students.where((x) => x.age > age).toList();
  }
  List<Student> addAge(int age){
    List<Student> ls=[];
    for(var x in students){
      var y=x.copyTo(age: x.age+age);
      ls.add(y);
    }
    return students.map((x)=>x.copyTo(age: x.age+age)).toList();
  }
  Student({required this.id,this.name="",this.age=0});
  Student copyTo({String? id,String?name,int?age}){
    return Student(id: id?? this.id,name: name?? this.name,age: age??this.age);
  }
}