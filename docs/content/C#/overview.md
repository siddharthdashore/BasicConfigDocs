####Q1: What is C#?

Ans: C# is an object-oriented, type-safe, and managed language that is compiled by .Net framework to generate Microsoft Intermediate Language.

####Q2: Can multiple catch blocks be executed?

Ans: No, Multiple catch blocks of similar type can't be executed. Once the proper catch code executed, the control is transferred to the finally block, and then the code that follows the finally block gets executed.

####Q3: What is an object?

Ans: An object is an instance of a class through which we access the methods of that class. "New" keyword is used to create an object. A class that creates an object in memory will contain the information about the methods, variables, and behavior of that class.

####Q4: Define Constructors

Ans: A constructor is a member function in a class that has the same name as its class. The constructor is automatically invoked whenever an object class is created. It constructs the values of data members while initializing the class.

####Q5: What is Jagged Arrays?

Ans: The Array which has elements of type array is called jagged Array. The elements can be of different dimensions and sizes. We can also call jagged Array as an Array of arrays.

####Q6: What is the difference between ref & out parameters?

Ans: An argument passed as ref must be initialized before passing to the method whereas out parameter needs not to be initialized before passing to a method.

####Q7: What is the use of 'using' statement in C#?

Ans: The 'using' block is used to obtain a resource and process it and then automatically dispose of when the execution of the block completed.

####Q8: What is serialization?

Ans: When we want to transport an object through a network, then we have to convert the object into a stream of bytes. The process of converting an object into a stream of bytes is called Serialization. For an object to be serializable, it should implement ISerialize Interface. De-serialization is the reverse process of creating an object from a stream of bytes.

####Q9: Can we use "this" command within a static method?

Ans: We can't use 'This' in a static method because we can only use static variables/methods in a static method.

####Q10: What is the difference between constants and read-only?

Ans: Constant variables are declared and initialized at compile time. The value can't be changed afterward. Read-only is used only when we want to assign the value at run time.

####Q11: What is an interface class? Give one example of it

Ans: An Interface is an abstract class which has only public abstract methods, and the methods only have the declaration and not the definition. These abstract methods must be implemented in the inherited classes.

``` C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace DemoApplication
{
 interface Guru99Interface
 {
  void SetTutorial(int pID, string pName);
  String GetTutorial();
 }

 class Guru99Tutorial : Guru99Interface
 {
  protected int TutorialID;
  protected string TutorialName;

  public void SetTutorial(int pID, string pName)
  {
   TutorialID = pID;
   TutorialName = pName;
  }

  public String GetTutorial()
  {
   return TutorialName;
  }

  static void Main(string[] args)
  {
   Guru99Tutorial pTutor = new Guru99Tutorial();

   pTutor.SetTutorial(1,".Net by Guru99");

   Console.WriteLine(pTutor.GetTutorial());

   Console.ReadKey();
  }
 }
}
```

####Q12: What are value types and reference types?

Ans: A value type holds a data value within its own memory space. Example

> int a = 30;

Reference type stores the address of the Object where the value is being stored. It is a pointer to another memory location.

> string b = "Hello Guru99!!";


####Q13: What are Custom Control and User Control?

Ans: Custom Controls are controls generated as compiled code (Dlls), those are easier to use and can be added to toolbox. Developers can drag and drop controls to their web forms. Attributes can, at design time. We can easily add custom controls to Multiple Applications (If Shared Dlls). So, If they are private, then we can copy to dll to bin directory of web application and then add reference and can use them.

User Controls are very much similar to ASP include files, and are easy to create. User controls can't be placed in the toolbox and dragged - dropped from it. They have their design and code-behind. The file extension for user controls is ascx.

####Q14: What are sealed classes in C#?

Ans: We create sealed classes when we want to restrict the class to be inherited. Sealed modifier used to prevent derivation from a class. If we forcefully specify a sealed class as base class, then a compile-time error occurs.

``` C#

namespace sealed_class
{
    class Program
    {
        public sealed class BaseClass
        {
            public void Display()
            {
                Console.WriteLine("This is a sealed class which can;t be further inherited");
            }
        }
        public class Derived : BaseClass
        {
            // this Derived class can;t inherit BaseClass because it is sealed  
        }
        static void Main(string[] args)
        {
            BaseClass obj = new BaseClass();
            obj.Display();
            Console.ReadLine();
        }
    }
}

Error: 'Program.Derived': cannot derive from sealed type 'Program.BaseClass'

```

Points to Remember while working with Sealed Class

1. A sealed class is completely opposite to an abstract class.
2. This sealed class cannot contain abstract methods.
3. It should be the bottom most class within the inheritance hierarchy.
4. A sealed class can never be used as a base class.
5. This sealed class is specially used to avoid further inheritance.
6. The keyword sealed can be used with classes, instance methods, and properties.

####Q15: What are sealed methods in C#?

Ans: Sealed method is used to define the overriding level of a virtual method. We create sealed methods when we want to restrict the method to be override in inherited class. Sealed keyword is always used with override keyword. If we forcefully specify a sealed method in derived class, then a compile-time error occurs.

``` C#
namespace sealed_method
{
    class Program
    {
        public class BaseClass
        {
            public virtual void Display()
            {
                Console.WriteLine("Virtual method");
            }
        }
        public class DerivedClass : BaseClass
        {
            // Now the display method have been sealed and can;t be overridden  
            public override sealed void Display()
            {
                Console.WriteLine("Sealed method");
            }
        }
        public class ThirdClass : DerivedClass  
        {  
            public override void Display()  
            {  
                Console.WriteLine("Here we try again to override display method which is not possible and will give error");  
            }  
        }  
        static void Main(string[] args)
        {
            DerivedClass ob1 = new DerivedClass();
            ob1.Display();
            Console.ReadLine();
        }
    }
}

Error: 'Program.ThirdClass.Display()': cannot override inherited member 'Program.DerivedClass.Display()' because it is sealed.

```

####Q16: What is the difference between private and sealed method?

Ans: The private method is not inherited whereas sealed method is inherited but cannot be overridden. So, a private method cannot be called from sub-classes whereas sealed method can be called from sub-classes. The same private method can be defined in sub-class and it does not lead to error.

####Q17: What are the differences between an abstract class and a sealed class?

Ans:

| ABSTRACT CLASS                                                                                                                      | SEALED CLASS                                                                                       |
| ----------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| A class which contains one or more abstract methods is known as an abstract class.                                                  | A class from which it is not possible to derive a new class is known as sealed class.              |
| The abstract class can contain abstract and non-abstract methods.                                                                   | The sealed class can contain non-abstract methods; it cannot contain abstract and virtual methods. |
| Creating a new class from an abstract class is compulsory to consume it.                                                            | It is not possible to create a new class from a sealed class.                                      |
| An abstract class cannot be instantiated directly; we need to create the object for its child classes to consume an abstract class. | We should create an object for a sealed class to consume its members.                              |
| We need to use the keyword abstract to make any class as abstract.                                                                  | We need to use the keyword sealed to make any class as sealed.                                     |
| An abstract class cannot be the bottom-most class within the inheritance hierarchy.                                                 | The sealed class should be the bottom most class within the inheritance hierarchy.                 |

####Q18: What is method overloading?

Ans: Method overloading is creating multiple methods with the same name with unique signatures in the same class. When we compile, the compiler uses overload resolution to determine the specific method to be invoke.

####Q19: What is the difference between Array and ArrayList?

Ans: Following are the differences between Array and ArrayList:

| Feature         | Array                                                                                       | ArrayList                                                                                                |
| --------------- | ------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| Memory          | This has fixed size and can’t increase or decrease dynamically.                             | Size can be increase or decrease dynamically.                                                            |
| Namespace       | Arrays belong to System.Array namespace                                                     | ArrayList belongs to System.Collection namespace.                                                        |
| Data Type       | In Arrays, we can store only one datatype either int, string, char etc.                     | In ArrayList we can store different datatype variables.                                                  |
| Operation Speed | Insertion and deletion operation is fast.                                                   | Insertion and deletion operation in ArrayList is slower than an Array.                                   |
| Typed           | Arrays are strongly typed which means it can store only specific type of items or elements. | Arraylist are not strongly typed.                                                                        |
| null            | Array cannot accept null.                                                                   | ArrayList collection can accepts null                                                                    |
| Example         | int[] intArray=new int[]{2}; <br> intArray[0] = 1; <br> intArray[2] = 2;                    | ArrayList Arrlst = new ArrayList(); <br> Arrlst.Add("Sagar"); <br> Arrlst.Add(1); <br> Arrlst.Add(null); |
	

####Q20:  Can a private virtual method can be overridden?

Ans: No, because they are not accessible outside the class.

####Q21: Describe the accessibility modifier "protected internal".

Ans: Protected Internal variables/methods are accessible within the same assembly and also from the classes that are derived from this parent class.

####Q22: 

Ans: 

####Q23: 

Ans: 

####Q24: 

Ans: 

####Q25: 

Ans: 

####Q26: 

Ans: 

####Q27: 

Ans: 

####Q28: 

Ans: 

####Q29: 

Ans: 

####Q30: 

Ans: 

####Q31: 

Ans: 

####Q32: 

Ans: 

####Q33: 

Ans: 

####Q34: 

Ans: 

####Q35: 

Ans: 

####Q36: 

Ans: 

####Q37: 

Ans: 

####Q38: 

Ans: 

####Q39: 

Ans: 

####Q40: 

Ans: 

####Q41: 

Ans: 

####Q42: 

Ans: 

####Q43: 

Ans: 

####Q44: 

Ans: 

####Q45: 

Ans: 

####Q46: 

Ans: 


