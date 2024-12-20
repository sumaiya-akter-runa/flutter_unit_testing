import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/my_function.dart';


void main()
{


  //for a single unit test


  //for multiple unit tests
  group("salary test", (){

    test("Salary Test 1", (){

      MyFunction mf=MyFunction();

      int salary=mf.calculateSalary(35);
      expect(salary, 14000);

    });

    test("Salary Test 2", (){

      MyFunction mf=MyFunction();

      int salary=mf.calculateSalary(45);
      expect(salary, 19000);


    });


  });
}