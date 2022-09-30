global with sharing class InsertMovesBatch implements 
Database.Batchable<Integer>, Database.Stateful, Database.AllowsCallouts {
    private List<Integer> index; 
    global InsertMovesBatch(List<Integer> index) {
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
            request.setEndpoint('https://pokeapi.co/api/v2/move/' + String.valueOf(index));
            request.setMethod('GET');
            Http https = new Http();
            HTTPResponse response = new Http().send(request);
            if(response.getStatusCode() == 200) {
             	PokeApiMovesJSON moves = PokeApiMovesJSON.parse(response.getBody());
                String effect = 'Has no effect!';
                for(PokeApiMovesJSON.Effect_entries effectOption: moves.effect_entries) {
                	if(effectOption.language.name == 'en') {
                    	effect = effectOption.short_effect;
                	}
                }
                Moves__c movesForInsert = new Moves__c(
                    Name = moves.name,
                    ExtId__c = moves.Id,
                    Accurancy__c = String.valueOf(moves.accuracy),
                    EffectChance__c = String.valueOf(moves.effect_chance),
                    Target__c = moves.target.name,
                    Priority__c = String.valueOf(moves.priority),
                    Effect__c = effect,
                    Power__c = moves.power,
                    Pp__c = moves.pp,
                    Type__c = moves.type.name
                );
                insert movesForInsert;
            }else {
                throw new MyCustomException('Moves Not Found!');
            }
        }catch(Exception e) {
            System.debug(e.getMessage());
        }        
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Finish Batch');
    }
}