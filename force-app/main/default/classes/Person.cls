/*********************************************************
Created Date  : 28 August 2023
@description  : This class defines a person's attributes and behaviours.
@creator  : Atheer Bdaiwi
Modification Log:
Ver  Date           Author      Modification
1.0  28 Aug. 23     AB          Initial Version
*********************************************************
*/

public class Person {

    // Declare the name & age attribute of the Person
    public String name;
    public Integer age;

    //@description  : Initializes the name and age of the person and calls the sayName method.
    public Person() { 
        name = 'Alex';  // Default name set to 'Alex'
        age = 67;       // Default age set to 67
        sayName();      // Calls the sayName method to print the name
    }    

    //@description  : Prints the name of the person to the debug log.
    public void sayName() {
        System.debug('My name is ' + name);
    }

    //@description  : Prints the age of the person to the debug log.
    public void sayAge() {
        System.debug('I am ' + age);
    }

    //@description  : Static method that creates a new instance of the Person class.
    public static void createPerson() { 
        Person person1 = new Person(); // Create a new Person instance using the default constructor
    }
}
