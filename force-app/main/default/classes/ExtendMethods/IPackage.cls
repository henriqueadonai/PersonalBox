//Apex Support Multiple Interfaces
public interface IPackage {
    
    Map<String,Func> export();

    Func require(string funcName);
}
