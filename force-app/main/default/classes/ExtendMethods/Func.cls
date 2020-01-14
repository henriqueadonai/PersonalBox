//Declares modifier declares that this class allows extension and overrides. You cannot override a method
//with the override keyword unless the class has been definied as virtual
public virtual class Func {
    // The length of the function
    private Integer length = -1;

    // The applied arguments
    private List<Object> args;

    protected Func() {
        this(-1, new List<Object>());
    }

    protected Func(Integer length, List<Object> args) {
        this.length = length;
        this.args = args;
    }

    protected Func(Integer length) {
        this(length, new List<Object>());
    }


     /**
     * Execute with no argument
     * */
    protected virtual Object exec() {
        throw new Func.FuncException('Function with no argument is not implemented');
    }

    /**
     * Execute with one argument
     * */
    protected virtual Object exec(Object arg1) {
        throw new Func.FuncException('Function with one argument is not implemented');
    }

     public Object run(Object arg1) {
         return this.runN(new List<Object>{ arg1 });
     }

     public Object runN(List<Object> args) {
         List<Object> allArgs = this.concatArgs(this.args, args);
         if(this.length < 0) {
             return this.execN(allArgs);
         }
         else if(this.length == 0) {
             return this.exec();
         }else if(this.length == 1) {
            return this.exec(getNthArg(allArgs, 0));
         
         }else{
             system.debug('Not execute Run');
             return null;
         }
    }

    /**
     * Execute with various arguments
    * */
     protected virtual Object execN(List<Object> args) {
         if(args.size() == 0) {
             return this.exec();
         }
         else if(args.size() == 1) {
             return this.exec(args.get(0));
         }else{
             return null;
         }
    
     }

    private Object getNthArg(List<Object> args, Integer index) {
        return index < args.size() && index >= 0 ? args.get(index) : null;
    }

    private List<Object> concatArgs(List<Object> oldArgs, List<Object> newArgs) {
         List<Object> newList = new List<Object>();
         List<Object> newArgsCopy = new List<Object>(newArgs);

         for(Object oldArg : oldArgs) {
             if(oldArg == R.placeholder && !newArgsCopy.isEmpty()) {
                 newList.add(newArgsCopy.remove(0));
             }
             else {
                 newList.add(oldArg);
             }
        }

         if(!newArgsCopy.isEmpty()) {
             newList.addAll(newArgsCopy);
         }

         return newList;
    }



    public class FuncException extends Exception {
    }
}
