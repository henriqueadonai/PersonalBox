//https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_methods_system_type.htm#apex_System_Type_methods
public class Injector {

    public static Object instantiate(string className){
        //Load the Type corresponding to the class name
        Type t = Type.forName(className);
        // Create a new instance of the class
        // and return it as an Object
        return t.newInstance();
    }
}
