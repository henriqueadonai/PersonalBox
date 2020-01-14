
//https://medium.com/better-programming/do-you-know-how-to-solve-these-programming-problems-18d04defc05e
public with sharing class Challenges {


    //Plus Minus
    public static List<Decimal> plusMinus(List<integer> lstNumber){
        Integer sizeList = lstNumber.Size();
        Integer scale = 2;

        Decimal positiveSize = 0;
        Decimal negativeSize = 0;
        Decimal zeroSize = 0;

        for(Integer value : lstNumber){
            if(value > 0){
                positiveSize ++;
            }
            if(value == 0){
                zeroSize ++;
            }
            if(value < 0){                
                negativeSize ++;
            }
        }
        List<Decimal> fractionals = new List<Decimal>();
        fractionals.add(positiveSize.divide(sizeList, scale));
        fractionals.add(negativeSize.divide(sizeList, scale));
        fractionals.add(zeroSize.divide(sizeList,scale));
        return fractionals; 
    }


    public static List<Integer> twoSum(List<Integer> lstNumber,Integer target){
        List<Integer> lstIndice = new List<Integer>();

        for(Integer i = 0; i < lstNumber.size(); i++){
            for(Integer y = i +1; y < lstNumber.size(); y++){
                if(lstNumber[i] + lstNumber[y] == target){
                    lstIndice.add(i);
                    lstIndice.add(y);
                }
            }

        }

        return lstIndice;
    }

    //https://web.stanford.edu/class/cs9/sample_probs/TwoSum.pdf
    public static List<Integer> twoSumSorting(List<integer> lstNumber, Integer target){
        List<Integer> lstIndice = new List<Integer>();

        lstNumber.sort();
        Integer index = 0;
        Integer arraySize = lstNumber.size() -1;
        while (index < arraySize) {
            Integer sum = lstNumber[index] + lstNumber[arraySize];

            if(sum == target){
                lstIndice.add(index);
                lstIndice.add(arraySize);
                index++;
                arraySize--;
            }else if(sum < target){
                index ++;
            }else{
                arraySize --;
            }
        }
        return lstIndice;
    }

    
    @TestVisible private static Boolean isPalindrome(String s){
        return s.reverse() == s;
    }

    @TestVisible private static Integer getInitialNumber(Integer digit){
        return Integer.valueOf(Math.pow(10,digit-1));
    }

    @TestVisible private static Integer getMaxNumber(Integer digit){
        Integer maxNumber = 0;
        for(Integer i = 0; i < digit; i++){
            maxNumber *= 10;
            maxNumber += 9;
        }

        return maxNumber;

    }

    public static Integer largestPalindrome(Integer digit){
        Integer minNumber = getInitialNumber(digit);
        Integer maxNumber = getMaxNumber(digit);
        List<String> lstPalindrome = new List<String>();

        Integer maxPalindrome = 0;

        for(Integer i = maxNumber; i >= minNumber; i --){
            for(Integer j = i; j >= minNumber; j--){
                Integer product = i * j;
                if(product < maxPalindrome){
                    break;
                }

                if(isPalindrome(String.valueOf(product)) && maxPalindrome < product){
                    maxPalindrome = product;
                }
            }
        }
        return maxPalindrome;
    }


}
