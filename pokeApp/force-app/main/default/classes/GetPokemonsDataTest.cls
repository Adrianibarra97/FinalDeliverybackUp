@IsTest
public with sharing class GetPokemonsDataTest {
    @IsTest static void getLeakedPokemonsWithSuccessfullyTest() {
		List<Pokemon__c> pokemons = new List<Pokemon__c>();
        List<String> types = new List<String>();
        types.add('Normal');
        types.add('Fighting');
        for(Integer i = 1; i < 10; i++) {
            if(i < 6) {
                pokemons.add(new Pokemon__c(
                    Name = 'Pokemon ' + i*34 + ' Test ' + i,
                    ExtId__c = i,
                    Types__c = 'Normal;Fighting',
                    PokemonNumber__c = i
                ));
            } else {
                pokemons.add(new Pokemon__c(
                    Name = 'Pokemon ' + i*34 + ' Test ' + i,
                    ExtId__c = i,
                    Types__c = types.get(1),
                    PokemonNumber__c = 7
                ));
            }
        }
        insert pokemons;
        Test.startTest();
        	List<Pokemon__c> res0 = GetPokemonsData.getLeakedPokemons(types, 0, '');
            List<Pokemon__c> res1 = GetPokemonsData.getLeakedPokemons(types, 1, 'Test');
            List<Pokemon__c> res2 = GetPokemonsData.getLeakedPokemons(types, 1, '');
        	types.remove(0);
            List<Pokemon__c> res3 = GetPokemonsData.getLeakedPokemons(types, 0, 'Test');
            types.clear();
            List<Pokemon__c> res4 = GetPokemonsData.getLeakedPokemons(types, 1, 'Test 3');
        	List<Pokemon__c> res5 = GetPokemonsData.getLeakedPokemons(types, 0, '');
        	List<Pokemon__c> res6 = GetPokemonsData.getLeakedPokemons(types, 2, '');
        	List<Pokemon__c> res7 = GetPokemonsData.getLeakedPokemons(types, 0, 'Test 1');
        Test.stopTest();
        System.assertEquals(5, res0.size());
        System.assert(res0.get(1).Types__c == 'Normal;Fighting');
        System.assertEquals(res1.get(0).Name, 'Pokemon 34 Test 1');
        System.assert(res1.get(1).ExtId__c == 2);
        System.assert(res1.get(1).Types__c == 'Normal;Fighting');
        System.assertEquals(5, res1.size());
        System.assertEquals(5, res2.size());
        System.assertEquals(1, res2.get(0).Generation__c);
        System.assertEquals(9, res3.size());
        System.assertEquals(1, res4.size());
        System.assertEquals(res4.get(0).Name, 'Pokemon 102 Test 3');
        System.assertEquals(9, res5.size());
        System.assertEquals(0, res6.size());
        System.assertEquals(1, res7.size());
        System.assertEquals(res7.get(0).Name, 'Pokemon 34 Test 1');
    }
    
    @IsTest static void getLeakedPokemonsWithoutSuccessfullyTest() {
		Boolean exceptionOccurred = false;
        List<String> types = new List<String>();
        Test.startTest();
        	List<Pokemon__c> res = new List<Pokemon__c>();
            try{
                res = GetPokemonsData.getLeakedPokemons(types, 9, 'Test254');
            }catch (Exception e){
                exceptionOccurred = true;
            }
        Test.stopTest();
        System.assert(exceptionOccurred);
    }
}