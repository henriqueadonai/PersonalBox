@istest
public  class ChallengesTest {
    @IsTest
    public static void plusMinusTest(){
        List<Integer> lstNumber = new List<Integer>{1,1,0,-1,-1};
        
        List<Decimal> lstresult = Challenges.plusMinus(lstNumber);
        System.assert(lstresult.size() == 3, 'Should have 3 returns(Positive, negative and Zero');
        System.assert(lstresult[0] == 0.4, 'First return is positive equals 0.4');
        System.assert(lstresult[1] == 0.4, 'Second return is negative equals 0.4');
        System.assert(lstresult[2] == 0.2, 'Third return is zero equals 0.2');
    }


    @IsTest
    public static void twoSumTest(){
        Integer target = 9;
        Integer[] lstNumber = new Integer[]{2,7,11,15};
        List<Integer> lstIndices = Challenges.TwoSum(lstNumber,target);

        System.assert(lstIndices.size() == 2, 'Should return 2 indices');
        System.assert(lstIndices[0] == 0, 'Should be indice 0');
        System.assert(lstIndices[1] == 1, 'Should be indice 1');

        Integer[] lstNumberMix = new Integer[]{2,7,11,8,15,4,1,5};
        List<Integer> lstIndicesMix = Challenges.TwoSum(lstNumberMix,target);
        System.assert(lstIndicesMix.size() == 6, 'Should return 6 indices');
        Integer indices = 0;
        for(integer i : lstIndicesMix){
            system.debug('Indices '+ indices + ' = ' + i);
            indices ++;
        }

        System.assert(lstIndicesMix[0] == 0, 'Should be indice 0');
        System.assert(lstIndicesMix[1] == 1, 'Should be indice 1');
        System.assert(lstIndicesMix[2] == 3, 'Should be indice 3');
        System.assert(lstIndicesMix[3] == 6, 'Should be indice 6');
        System.assert(lstIndicesMix[4] == 5, 'Should be indice 5');
        System.assert(lstIndicesMix[5] == 7, 'Should be indice 7');
//
    }

    @IsTest
    public static void twoSumSorting(){
        Integer target = 26;
        Integer[] lstNumber = new Integer[]{2,7,11,15};
        List<Integer> lstIndices = Challenges.twoSumSorting(lstNumber, target);

        System.assert(lstIndices.size() == 2, 'Should return 2 indices');
        System.assert(lstIndices[0] == 2, 'Should be indice 2');
        System.assert(lstIndices[1] == 3, 'Should be indice 3');

        target = 9;
        Integer[] lstNumberMix = new Integer[]{2,7,11,8,15,4,1,5};
        List<Integer> lstIndicesMix = Challenges.twoSumSorting(lstNumberMix,target);
        System.assert(lstIndicesMix.size() == 6, 'Should return 6 indices');
    }

    @IsTest static void numberMaxMinTest(){
        Integer digit = 3;
        Integer maxNumber = Challenges.getMaxNumber(digit);
        System.assert(maxNumber == 999, 'Must be 999');


        Integer getInitial = Challenges.getInitialNumber(digit);
        System.assert(getInitial == 100, 'Must be 100 != ' + getInitial);
    }

    @IsTest static void isPalindrome(){
        Boolean isPalindrome = Challenges.isPalindrome('1001');
        System.assert(isPalindrome == true, 'Must be palindrome');

        Boolean isNotPalindrome = Challenges.isPalindrome('1234');
        System.assert(isNotPalindrome == false, 'Not a palindrome');
    }

    @isTest static void maxPalindrome(){
        Integer digit = 2;
        Integer maxAssert = 9009;

        Integer maxPalindrome = Challenges.largestPalindrome(digit);

        system.assert(maxAssert == maxPalindrome, 'Max ' + maxPalindrome + ' palindrome for 2 digits = ' + maxAssert);

        digit = 3;
        
        Integer maxPalindromeThreeDigits = Challenges.largestPalindrome(digit);
        maxAssert = 906609;
        system.assert(maxAssert == maxPalindromeThreeDigits, 'Max ' + maxPalindromeThreeDigits + ' palindrome for 2 digits = ' + maxAssert);

    }



}
