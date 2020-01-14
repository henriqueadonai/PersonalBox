public class R implements IPackage{

    private Object val;
    private R(Object val) {
        this.val = val;
    }

    public R() {
        this(null);
    }

    /**
     * Factory function to create instance of R
     *
     * Example:
     * R.of('message').size().debug(); // 7
     *
     * @param val The raw value to be wrapped
     * @return R
     * */
    public static R of(Object val) {
        return new R(val);
    }

    public Func require(String funcName) {
        return null;
        //return R.API.get(funcName);
    }

    public Map<String, Func> export() {
        return null;
        //return R.API;
    }

    public static Func reverse = new ReverseFunc();
    public R reverse() {
        system.debug('Reverse 36');
        return R.of(R.reverse.run(this.val));
    }

    public static Func isListLike = new IsListLikeFunc();
    private static Boolean isListLike(Object arg) {
        return (Boolean)R.isListLike.run(arg);
        //return null;
    }


    public static Func toIntegerList = new ToIntegerListFunc();
    public List<Integer> toIntegerList() {
        return (List<Integer>)R.toIntegerList.run(this.val);
    }
    

    

    public static Func placeholder = new PlaceholderFunc();

    private class ReverseFunc extends Func {
        public ReverseFunc() {
            super(1);
        }

        public override Object exec(Object arg) {
            system.debug('Exec ReserveFunc');
             if(isListLike(arg)) {
                 List<Object> mList = toList(arg);
                 List<Object> newList = new List<Object>();
                 for(Integer i = mList.size() - 1; i >= 0; i--) {
                     newList.add(mList.get(i));
                 }
                 return newList;
            }
            // else if(isStringLike(arg)) {
            //     List<String> mCharList = toCharList(arg);
            //     List<String> newCharList = new List<String>();
            //     for(Integer i = mCharList.size() - 1; i >= 0; i--) {
            //         newCharList.add(mCharList.get(i));
            //     }
            //     return String.join(newCharList, '');
            // }

            return arg;
        }
    }

    private class IsListLikeFunc extends Func {
        public IsListLikeFunc() {
            super(1);
        }
        
        public override Object exec(Object arg) {
            return true;
        }
        
            
    }

    private class PlaceholderFunc extends Func {
        public override Object execN(List<Object> args) {
            return null;
        }
    }



    private class ToIntegerListFunc extends Func {
        public ToIntegerListFunc() {
            super(1);
        }

        public override Object exec(Object arg) {
            List<Object> mList = toList(arg);
            List<Integer> newList = new List<Integer>();

            for (Object obj : mList) {
            //     //newList.add(toInteger(obj));
                 newList.add(Integer.valueOf(obj));
            }

            return newList;
        }

    }

    public static Func toList = new ToListFunc();
    private static List<Object> toList(Object arg) {
        return (List<Object>)R.toList.run(arg);
    }

    private class ToListFunc extends Func {
        public ToListFunc() {
            super(1);
        }

        public override Object exec(Object arg) {
            List<Object> newList = null;
            if(arg == null) {
                newList = new List<Object>();
            }
            else if(arg instanceof List<Object>) {
                newList = (List<Object>)arg;
            }
            else if(arg instanceof String) {
                try {
                    newList = (List<Object>)JSON.deserializeUntyped((String)arg);
                } catch(Exception e) {
                    System.debug(LoggingLevel.Error, 'ERROR (toList): ' + e);
                }
            }
            else {
                newList = new List<Object>();
            }

            return newList;
        }
    }


    

}
