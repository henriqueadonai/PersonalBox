@isTest
public ClAsS RTest {
    
    @IsTest static void reserveTest(){
        List<Integer> ints = new List<Integer>{1,2,3,4,5};
        //(new List<Integer>{5,4,3,2,1}, 
        List<Integer> lstINT = R.of(ints).reverse().toIntegerList();

        //Diferecen between asserts just 1 parameter and assertEqual 2 parameters
        System.assert(ints.size() == lstINT.size());
        System.assertEquals(new List<Integer>{5,4,3,2,1}, lstINT);
        
    }
}
