@isTest
global with sharing class InsertAbilityBatchTest {
    @IsTest static void insertAbilitySuccessfullyTest() {
        List<Integer> index = new List<Integer>();
        index.add(234);
        String fakeResponse = '{' +
          '"effect_changes": [],' +
          '"effect_entries": [' +
          	'{' +
          		'"effect": "While this Pokémon is in battle, opposing Pokémon cannot flee or switch out. Other Pokémon with this ability are unaffected.  Pokémon with run away can still flee.  Pokémon can still switch out with the use of a move or item.",' +
                '"language": {' +
                	'"name": "en",' +
                  	'"url": "https://pokeapi.co/api/v2/language/9/"' +
              	'},' +
            	'"short_effect": "Prevents opponents from fleeing or switching out."' +
          	'}' +
          '],' +
          '"flavor_text_entries": [' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja-Hrkt",' +
                '"url": "https://pokeapi.co/api/v2/language/1/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ko",' +
                '"url": "https://pokeapi.co/api/v2/language/3/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "zh-Hant",' +
                '"url": "https://pokeapi.co/api/v2/language/4/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Augmente lAttaque du Pokémon quand il entrenau combat.",' +
              '"language": {' +
                '"name": "fr",' +
                '"url": "https://pokeapi.co/api/v2/language/5/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Erhöht bei Kampfantritt den Angriff.",' +
              '"language": {' +
                '"name": "de",' +
                '"url": "https://pokeapi.co/api/v2/language/6/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Aumenta su Ataque al entrar en combate.",' +
              '"language": {' +
                '"name": "es",' +
                '"url": "https://pokeapi.co/api/v2/language/7/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Quando il Pokémon entra in campo, il suo Attacconaumenta.",' +
              '"language": {' +
                '"name": "it",' +
                '"url": "https://pokeapi.co/api/v2/language/8/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Boosts the Pokémons Attack stat when the Pokémonnenters a battle.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja",' +
                '"url": "https://pokeapi.co/api/v2/language/11/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "zh-Hans",' +
                '"url": "https://pokeapi.co/api/v2/language/12/"' +
              '},' +
              '"version_group": {' +
                '"name": "sword-shield",' +
                '"url": "https://pokeapi.co/api/v2/version-group/20/"' +
              '}' +
            '}' +
          '],' +
          '"generation": {' +
            '"name": "generation-viii",' +
            '"url": "https://pokeapi.co/api/v2/generation/8/"' +
          '},' +
          '"id": 234,' +
          '"is_main_series": true,' +
          '"name": "intrepid-sword",' +
          '"names": [' +
            '{' +
              '"language": {' +
                '"name": "ja-Hrkt",' +
                '"url": "https://pokeapi.co/api/v2/language/1/"' +
              '},' +
              '"name": ""' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "ko",' +
                '"url": "https://pokeapi.co/api/v2/language/3/"' +
              '},' +
              '"name": ""' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "zh-Hant",' +
                '"url": "https://pokeapi.co/api/v2/language/4/"' +
              '},' +
              '"name": ""' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "fr",' +
                '"url": "https://pokeapi.co/api/v2/language/5/"' +
              '},' +
              '"name": "Lame Indomptable"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "de",' +
                '"url": "https://pokeapi.co/api/v2/language/6/"' +
              '},' +
              '"name": "Kühnes Schwert"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "es",' +
                '"url": "https://pokeapi.co/api/v2/language/7/"' +
              '},' +
              '"name": "Espada Indómita"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "it",' +
                '"url": "https://pokeapi.co/api/v2/language/8/"' +
              '},' +
              '"name": "Spada Indomita"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"name": "Intrepid Sword"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "ja",' +
                '"url": "https://pokeapi.co/api/v2/language/11/"' +
              '},' +
              '"name": ""' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "zh-Hans",' +
                '"url": "https://pokeapi.co/api/v2/language/12/"' +
              '},' +
              '"name": ""' +
            '}' +
          '],' +
          '"pokemon": [' +
            '{' +
              '"is_hidden": false,' +
              '"pokemon": {' +
                '"name": "zacian",' +
                '"url": "https://pokeapi.co/api/v2/pokemon/888/"' +
              '},' +
              '"slot": 1' +
            '},' +
            '{' +
              '"is_hidden": false,' +
              '"pokemon": {' +
                '"name": "zacian-crowned",' +
                '"url": "https://pokeapi.co/api/v2/pokemon/10188/"' +
              '},' +
              '"slot": 1' +
            '}' +
          ']' +
        '}';
        SingleRequestMock abilityMock = new SingleRequestMock(
            200,
            'OK',
            fakeResponse,
            null
        );
        Test.setMock(HttpCalloutMock.class, abilityMock);
        Test.startTest();
            InsertAbilityBatch AbilityBatch = new InsertAbilityBatch(index);
            Id batchId = Database.executeBatch(AbilityBatch, 1);
        Test.stopTest();
        AsyncApexJob job = [
                            SELECT Id, Status, JobItemsProcessed, TotalJobItems, NumberOfErrors 
                            FROM AsyncApexJob 
                            WHERE ID = :batchId
                           ];
        Ability__c ability = [
            				  SELECT Id, ExtId__c, Effect__c 
            				  FROM Ability__c 
            				  WHERE ExtId__c = 234
                             ];
        System.assertEquals('Prevents opponents from fleeing or switching out.', ability.Effect__c);
        System.assertEquals(234, ability.ExtId__c);
        System.assertEquals('Completed', job.Status);
        System.assertEquals(1, job.JobItemsProcessed);
        System.assertEquals(0, job.NumberOfErrors);
    }

    @IsTest static void insertAbilityWithoutSuccessfullyTest() {
        List<Integer> index = new List<Integer>();
        index.add(1);
        SingleRequestMock abilityMock = new SingleRequestMock(
            404,
            'Not Found',
            '',
            null
        );
        Test.setMock(HttpCalloutMock.class, abilityMock);
        Test.startTest();
            InsertAbilityBatch AbilityBatch = new InsertAbilityBatch(index);
            Id batchId = Database.executeBatch(AbilityBatch, 1);
        Test.stopTest();
        AsyncApexJob job = [
                            SELECT Id, Status, JobItemsProcessed, TotalJobItems, NumberOfErrors 
                            FROM AsyncApexJob 
                            WHERE ID = :batchId
                           ];
        System.assertEquals('Completed', job.Status);
        System.assertEquals(1, job.JobItemsProcessed);
    }
}