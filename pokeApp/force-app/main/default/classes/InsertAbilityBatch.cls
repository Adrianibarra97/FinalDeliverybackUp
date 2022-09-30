global with sharing class InsertAbilityBatch implements 
Database.Batchable<Integer>, Database.Stateful, Database.AllowsCallouts {
    private List<Integer> index; 
    global InsertAbilityBatch(List<Integer> index) {
        this.index = index;
    }
    global List<Integer> start(Database.BatchableContext bc) {
        return index;
    }
    global void execute(Database.BatchableContext bc, List<Integer> scope){
        Integer index = scope[0];
        try {
            HttpRequest request = new HttpRequest();
            request.setHeader('Accept', 'application/json');
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');
            request.setEndpoint('https://pokeapi.co/api/v2/ability/' + String.valueOf(index));
            request.setMethod('GET');
            Http https = new Http();
            HTTPResponse response = new Http().send(request);
            if(response.getStatusCode() == 200) {
                PokeApiAbilityJSON ability = PokeApiAbilityJSON.parse(response.getBody());
                String effect = 'Has no effect!';
                for(PokeApiAbilityJSON.Effect_entries_Z effectOption: ability.effect_entries) {
                	if(effectOption.language.name == 'en') {
                    	effect = effectOption.short_effect;
                	}
                }
                Ability__c abilityForInsert = new Ability__c(
                    Name = ability.name,
                    ExtId__c = ability.id,
                    Effect__c = effect
                );
                insert abilityForInsert;
            }else {
                throw new MyCustomException('Ability Not Found!');
           	}
        }catch(Exception e) {
        	System.debug(e.getMessage());
        }        
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Finish Batch');
    }
}