global with sharing class InsertPokemonBatch implements 
Database.Batchable<Integer>, Database.Stateful, Database.AllowsCallouts {
    private List<Integer> index; 
    global InsertPokemonBatch(List<Integer> index) {
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
            request.setEndpoint('https://pokeapi.co/api/v2/pokemon/' + String.valueOf(index));
            request.setMethod('GET');
            Http https = new Http();
            HTTPResponse response = new Http().send(request);
            if(response.getStatusCode() == 200) {
                PokeApiPokemonJSON pokemon = PokeApiPokemonJSON.parse(response.getBody());
                String attack;
                String defense;
                String speed;
                String life;
                String height;
                String weight;
                String types;
                Id abilityId;
                List<String> typeNames = new List<String>();
                List<Id> movesId = new List<Id>();
                try {
                    String abilityUrl = pokemon.abilities.get(0).ability.url;
                    Integer ExtId = Integer.valueOf(abilityUrl.split('/').get(6));
                    abilityId = [select Id, ExtId__c
                                from Ability__c
                                where ExtId__c =: ExtId
                                ].Id;
                }catch(Exception e) {
                    abilityId = null;
                }
                for(Integer i = 0; i < 4; i++) {
                    try {
                        String movesUrl = pokemon.moves.get(i).move.url;
                        Integer ExtId = Integer.valueOf(movesUrl.split('/').get(6));
                        movesId.add(
                            [select Id, ExtId__c
                            from Moves__c
                            where ExtId__c =: ExtId
                            ].Id
                        );
                    }catch(Exception e) {
                        movesId.add(null);
                    }
                }
                for(PokeApiPokemonJSON.Stats stats: pokemon.stats) {
                    String name = stats.stat.name;
                    if(name == 'attack') {
                        attack = String.valueOf(stats.base_stat);
                    } else if(name == 'defense') {
                        defense = String.valueOf(stats.base_stat);
                    } else if(name == 'speed') {
                        speed = String.valueOf(stats.base_stat);
                    } else if(name == 'hp') {
                        life = String.valueOf(stats.base_stat);
                    }
                }
                height = String.valueOf(Decimal.valueOf(pokemon.height) / 10) + ' m';
                weight = String.valueOf(Decimal.valueOf(pokemon.weight) / 10) + ' Kg';
                for(Integer i = 0; i < pokemon.types.size(); i++) {
                    typeNames.add(pokemon.types.get(i).type.name.capitalize());
                }
                types = String.join(typeNames, ';');
                Pokemon__c pokemonForInsert = new Pokemon__c(
                    Name = pokemon.name,
                    ExtId__c = pokemon.id,
                    PokemonNumber__c = pokemon.order,
                    Attack__c = attack,
                    Defense__c = defense,
                    Life__c = life,
                    Speed__c = speed,
                    Height__c = height,
                    Weihgt__c = weight,
                    Types__c = types,
                    Image__c = pokemon.sprites.front_default,
                    Ability__c = abilityId,
                    Slot1__c = movesId.get(0),
                    Slot2__c = movesId.get(1),
                    Slot3__c = movesId.get(2),
                    Slot4__c = movesId.get(3)
                );
                insert pokemonForInsert;
            }else {
                throw new MyCustomException('Pokemon Not Found!');
            }
        }catch(Exception e) {
            System.debug(e.getMessage());
        }
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Finish Batch');
    }
}