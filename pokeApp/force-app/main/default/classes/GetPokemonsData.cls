public with sharing class GetPokemonsData {
    @AuraEnabled(cacheable=true scope='global')
    public static List<Pokemon__c> getLeakedPokemons(
        List<String> types, 
        Integer generation,
        String searchName
    ) {
        try {
            if(generation < 0 || generation > 8) throw new MyCustomException('Invalid Generation!');
            String Query = 
                'SELECT Id, Name, ExtId__c, Ability__c, ' +
                    'Attack__c, Defense__c, Life__c, Speed__c, Height__c, Weihgt__c, ' +
                    'Types__c, Generation__c, Image__c, PokemonNumber__c, ' +
                    'Slot1__c, Slot2__c, Slot3__c, Slot4__c ' +
                'FROM Pokemon__c'
            ;
            String orderBy = ' ORDER BY ExtId__c';
            searchName = '%' + searchName + '%';
            if(types.size() != 0 && generation != 0 && searchName != '%%') {
                String finalQuery = 
                    Query +
                    ' WHERE (Generation__c = ' + String.valueOf(generation) +
                    ' AND Name LIKE \'' + searchName + '\'' +
                    ' AND Types__c INCLUDES (\'' + String.join(types, ';') + '\'))' +
                    orderBy
               	;
                List<Pokemon__c> data = Database.query(finalQuery);
                return data;
            } else if(types.size() != 0 && generation == 0 && searchName == '%%') {
                String finalQuery = 
                    Query +
                    ' WHERE Types__c INCLUDES (\'' + String.join(types, ';') + '\')' +
                    orderBy
               	;
                List<Pokemon__c> data = Database.query(finalQuery);
                return data;
            } else if(types.size() != 0 && generation != 0 && searchName == '%%') {
                String finalQuery = 
                    Query +
                    ' WHERE (Generation__c = ' + String.valueOf(generation) +
                    ' AND Types__c INCLUDES (\'' + String.join(types, ';') + '\'))' +
                    orderBy
               	;
                List<Pokemon__c> data = Database.query(finalQuery);
                return data;
            } else if(types.size() != 0 && generation == 0 && searchName != '%%') {
                String finalQuery = 
                    Query +
                    ' WHERE (Name LIKE \'' + searchName + '\'' +
                    ' AND Types__c INCLUDES (\'' + String.join(types, ';') + '\'))' +
                    orderBy
               	;
                List<Pokemon__c> data = Database.query(finalQuery);
                return data;
            } else if(types.size() == 0 && generation != 0 && searchName == '%%') {
                String finalQuery = 
                    Query +
                    ' WHERE Generation__c = ' + String.valueOf(generation) +
                    orderBy
              	;
                List<Pokemon__c> data = Database.query(finalQuery);
                return data;
            } else if(types.size() == 0 && generation != 0 && searchName != '%%') {
                String finalQuery = 
                    Query +
                    ' WHERE (Generation__c = ' + String.valueOf(generation) +
                    ' AND Name LIKE \'' + searchName + '\')' +
                    orderBy
               	;
                List<Pokemon__c> data = Database.query(finalQuery);
                return data;
            } else if(types.size() == 0 && generation == 0 && searchName != '%%') {
                String finalQuery = 
                    Query +
                    ' WHERE Name LIKE \'' + searchName + '\'' +
                    orderBy
               	;
                List<Pokemon__c> data = Database.query(finalQuery);
                return data;
            } else {
                String finalQuery = Query + orderBy;
                List<Pokemon__c> data = Database.query(finalQuery);
                return data;
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}