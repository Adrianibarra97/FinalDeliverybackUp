@isTest 
global with sharing class InsertMovesBatchTest {
    @isTest static void insertMovesSuccessfullyTest() {
        List<Integer> index = new List<Integer>();
        index.add(1);
        String fakeResponse = '{' +
          '"accuracy": 100,' +
          '"contest_combos": {' +
            '"normal": {' +
              '"use_after": null,' +
              '"use_before": [' +
                '{' +
                  '"name": "double-slap",' +
                  '"url": "https://pokeapi.co/api/v2/move/3/"' +
                '},' +
                '{' +
                  '"name": "slam",' +
                  '"url": "https://pokeapi.co/api/v2/move/21/"' +
                '},' +
                '{' +
                  '"name": "feint-attack",' +
                  '"url": "https://pokeapi.co/api/v2/move/185/"' +
                '}' +
              ']' +
            '},' +
            '"super": {' +
              '"use_after": null,' +
              '"use_before": null' +
            '}' +
          '},' +
          '"contest_effect": {' +
            '"url": "https://pokeapi.co/api/v2/contest-effect/1/"' +
          '},' +
          '"contest_type": {' +
            '"name": "tough",' +
            '"url": "https://pokeapi.co/api/v2/contest-type/5/"' +
          '},' +
          '"damage_class": {' +
            '"name": "physical",' +
            '"url": "https://pokeapi.co/api/v2/move-damage-class/2/"' +
          '},' +
          '"effect_chance": null,' +
          '"effect_changes": [],' +
          '"effect_entries": [' +
            '{' +
              '"effect": "Inflicts regular damage.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"short_effect": "Inflicts regular damage with no additional effect."' +
            '}' +
          '],' +
          '"flavor_text_entries": [' +
            '{' +
              '"flavor_text": "Pounds with fore 00ad legs or tail.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "gold-silver",' +
                '"url": "https://pokeapi.co/api/v2/version-group/3/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Pounds with fore 00ad legs or tail.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "crystal",' +
                '"url": "https://pokeapi.co/api/v2/version-group/4/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Pounds the foe with forelegs or tail.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "ruby-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/5/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Pounds the foe with forelegs or tail.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "emerald",' +
                '"url": "https://pokeapi.co/api/v2/version-group/6/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "A physical attack delivered with a long tail or a foreleg, etc.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "firered-leafgreen",' +
                '"url": "https://pokeapi.co/api/v2/version-group/7/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The foe is physically pounded with a long tail or a foreleg, etc.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "diamond-pearl",' +
                '"url": "https://pokeapi.co/api/v2/version-group/8/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The foe is physically pounded with a long tail or a foreleg, etc.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "platinum",' +
                '"url": "https://pokeapi.co/api/v2/version-group/9/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The foe is physically pounded with a long tail or a foreleg, etc.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "heartgold-soulsilver",' +
                '"url": "https://pokeapi.co/api/v2/version-group/10/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Écrase l ennemi avec les pattes avant, la queue, etc.",' +
              '"language": {' +
                '"name": "fr",' +
                '"url": "https://pokeapi.co/api/v2/language/5/"' +
              '},' +
              '"version_group": {' +
                '"name": "black-white",' +
                '"url": "https://pokeapi.co/api/v2/version-group/11/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The target is physically pounded with a long tail or a foreleg, etc.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "black-white",' +
                '"url": "https://pokeapi.co/api/v2/version-group/11/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The target is physically pounded with a long tail or a foreleg, etc.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "black-2-white-2",' +
                '"url": "https://pokeapi.co/api/v2/version-group/14/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja-Hrkt",' +
                '"url": "https://pokeapi.co/api/v2/language/1/"' +
              '},' +
              '"version_group": {' +
                '"name": "x-y",' +
                '"url": "https://pokeapi.co/api/v2/version-group/15/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ko",' +
                '"url": "https://pokeapi.co/api/v2/language/3/"' +
              '},' +
              '"version_group": {' +
                '"name": "x-y",' +
                '"url": "https://pokeapi.co/api/v2/version-group/15/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Écrase l ennemi avec les pattes avant ou la queue, par exemple.",' +
              '"language": {' +
                '"name": "fr",' +
                '"url": "https://pokeapi.co/api/v2/language/5/"' +
              '},' +
              '"version_group": {' +
                '"name": "x-y",' +
                '"url": "https://pokeapi.co/api/v2/version-group/15/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",' +
              '"language": {' +
                '"name": "de",' +
                '"url": "https://pokeapi.co/api/v2/language/6/"' +
              '},' +
              '"version_group": {' +
                '"name": "x-y",' +
                '"url": "https://pokeapi.co/api/v2/version-group/15/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Golpea con las patas o la cola.",' +
              '"language": {' +
                '"name": "es",' +
                '"url": "https://pokeapi.co/api/v2/language/7/"' +
              '},' +
              '"version_group": {' +
                '"name": "x-y",' +
                '"url": "https://pokeapi.co/api/v2/version-group/15/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Colpisce il bersaglio con la coda o le zampe anteriori.",' +
              '"language": {' +
                '"name": "it",' +
                '"url": "https://pokeapi.co/api/v2/language/8/"' +
              '},' +
              '"version_group": {' +
                '"name": "x-y",' +
                '"url": "https://pokeapi.co/api/v2/version-group/15/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The target is physically pounded with a long tail, a foreleg, or the like.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "x-y",' +
                '"url": "https://pokeapi.co/api/v2/version-group/15/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja",' +
                '"url": "https://pokeapi.co/api/v2/language/11/"' +
              '},' +
              '"version_group": {' +
                '"name": "x-y",' +
                '"url": "https://pokeapi.co/api/v2/version-group/15/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja-Hrkt",' +
                '"url": "https://pokeapi.co/api/v2/language/1/"' +
              '},' +
              '"version_group": {' +
                '"name": "omega-ruby-alpha-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/16/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ko",' +
                '"url": "https://pokeapi.co/api/v2/language/3/"' +
              '},' +
              '"version_group": {' +
                '"name": "omega-ruby-alpha-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/16/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Écrase l ennemi avec les pattes avant ou la queue, par exemple.",' +
              '"language": {' +
                '"name": "fr",' +
                '"url": "https://pokeapi.co/api/v2/language/5/"' +
              '},' +
              '"version_group": {' +
                '"name": "omega-ruby-alpha-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/16/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",' +
              '"language": {' +
                '"name": "de",' +
                '"url": "https://pokeapi.co/api/v2/language/6/"' +
              '},' +
              '"version_group": {' +
                '"name": "omega-ruby-alpha-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/16/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Golpea con las patas o la cola.",' +
              '"language": {' +
                '"name": "es",' +
                '"url": "https://pokeapi.co/api/v2/language/7/"' +
              '},' +
              '"version_group": {' +
                '"name": "omega-ruby-alpha-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/16/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Colpisce il bersaglio con la coda o le zampe anteriori.",' +
              '"language": {' +
                '"name": "it",' +
                '"url": "https://pokeapi.co/api/v2/language/8/"' +
              '},' +
              '"version_group": {' +
                '"name": "omega-ruby-alpha-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/16/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The target is physically pounded with a long tail, a foreleg, or the like.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "omega-ruby-alpha-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/16/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja",' +
                '"url": "https://pokeapi.co/api/v2/language/11/"' +
              '},' +
              '"version_group": {' +
                '"name": "omega-ruby-alpha-sapphire",' +
                '"url": "https://pokeapi.co/api/v2/version-group/16/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja-Hrkt",' +
                '"url": "https://pokeapi.co/api/v2/language/1/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ko",' +
                '"url": "https://pokeapi.co/api/v2/language/3/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "zh-Hant",' +
                '"url": "https://pokeapi.co/api/v2/language/4/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Écrase l ennemi avec les pattes avant ou la queue, par exemple.",' +
              '"language": {' +
                '"name": "fr",' +
                '"url": "https://pokeapi.co/api/v2/language/5/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",' +
              '"language": {' +
                '"name": "de",' +
                '"url": "https://pokeapi.co/api/v2/language/6/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Golpea con las patas o la cola.",' +
              '"language": {' +
                '"name": "es",' +
                '"url": "https://pokeapi.co/api/v2/language/7/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Colpisce il bersaglio con la coda o le zampe anteriori.",' +
              '"language": {' +
                '"name": "it",' +
                '"url": "https://pokeapi.co/api/v2/language/8/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The target is physically pounded with a long tail, a foreleg, or the like.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja",' +
                '"url": "https://pokeapi.co/api/v2/language/11/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "zh-Hans",' +
                '"url": "https://pokeapi.co/api/v2/language/12/"' +
              '},' +
              '"version_group": {' +
                '"name": "sun-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/17/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja-Hrkt",' +
                '"url": "https://pokeapi.co/api/v2/language/1/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ko",' +
                '"url": "https://pokeapi.co/api/v2/language/3/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "zh-Hant",' +
                '"url": "https://pokeapi.co/api/v2/language/4/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Écrase lennemi avec les pattes avant ou la queue, par exemple.",' +
              '"language": {' +
                '"name": "fr",' +
                '"url": "https://pokeapi.co/api/v2/language/5/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",' +
              '"language": {' +
                '"name": "de",' +
                '"url": "https://pokeapi.co/api/v2/language/6/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Golpea con las patas o la cola.",' +
              '"language": {' +
                '"name": "es",' +
                '"url": "https://pokeapi.co/api/v2/language/7/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Colpisce il bersaglio con la coda o le zampe anteriori.",' +
              '"language": {' +
                '"name": "it",' +
                '"url": "https://pokeapi.co/api/v2/language/8/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The target is physically pounded with a long tail, a foreleg, or the like.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja",' +
                '"url": "https://pokeapi.co/api/v2/language/11/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "zh-Hans",' +
                '"url": "https://pokeapi.co/api/v2/language/12/"' +
              '},' +
              '"version_group": {' +
                '"name": "ultra-sun-ultra-moon",' +
                '"url": "https://pokeapi.co/api/v2/version-group/18/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja-Hrkt",' +
                '"url": "https://pokeapi.co/api/v2/language/1/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ko",' +
                '"url": "https://pokeapi.co/api/v2/language/3/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "zh-Hant",' +
                '"url": "https://pokeapi.co/api/v2/language/4/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Écrase l ennemi avec les pattes avant ou la queue, par exemple.",' +
              '"language": {' +
                '"name": "fr",' +
                '"url": "https://pokeapi.co/api/v2/language/5/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",' +
              '"language": {' +
                '"name": "de",' +
                '"url": "https://pokeapi.co/api/v2/language/6/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Golpea con las patas o la cola.",' +
              '"language": {' +
                '"name": "es",' +
                '"url": "https://pokeapi.co/api/v2/language/7/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "Colpisce il bersaglio con la coda o le zampe anteriori.",' +
              '"language": {' +
                '"name": "it",' +
                '"url": "https://pokeapi.co/api/v2/language/8/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "The target is physically pounded with a long tail, aforeleg, or the like.",' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "ja",' +
                '"url": "https://pokeapi.co/api/v2/language/11/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
            '{' +
              '"flavor_text": "",' +
              '"language": {' +
                '"name": "zh-Hans",' +
                '"url": "https://pokeapi.co/api/v2/language/12/"' +
              '},' +
              '"version_group": {' +
                '"name": "lets-go-pikachu-lets-go-eevee",' +
                '"url": "https://pokeapi.co/api/v2/version-group/19/"' +
              '}' +
            '},' +
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
              '"flavor_text": "Écrase l ennemi avec les pattes avant ou la queue, par exemple.",' +
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
              '"flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",' +
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
              '"flavor_text": "Golpea con las patas o la cola.",' +
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
              '"flavor_text": "Colpisce il bersaglio con la coda o le zampe-nanteriori.",' +
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
              '"flavor_text": "The target is physically pounded with a long tail, a-nforeleg, or the like.",' +
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
            '"name": "generation-i",' +
            '"url": "https://pokeapi.co/api/v2/generation/1/"' +
          '},' +
          '"id": 1,' +
          '"learned_by_pokemon": [' +
            '{' +
              '"name": "clefairy",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/35/"' +
            '},' +
            '{' +
              '"name": "clefable",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/36/"' +
            '},' +
            '{' +
              '"name": "jigglypuff",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/39/"' +
            '},' +
            '{' +
              '"name": "wigglytuff",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/40/"' +
            '},' +
            '{' +
              '"name": "poliwag",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/60/"' +
            '},' +
            '{' +
              '"name": "poliwhirl",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/61/"' +
            '},' +
            '{' +
              '"name": "poliwrath",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/62/"' +
            '},' +
            '{' +
              '"name": "grimer",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/88/"' +
            '},' +
            '{' +
              '"name": "muk",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/89/"' +
            '},' +
            '{' +
              '"name": "drowzee",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/96/"' +
            '},' +
            '{' +
              '"name": "hypno",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/97/"' +
            '},' +
            '{' +
              '"name": "chansey",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/113/"' +
            '},' +
            '{' +
              '"name": "kangaskhan",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/115/"' +
            '},' +
            '{' +
              '"name": "mr-mime",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/122/"' +
            '},' +
            '{' +
              '"name": "jynx",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/124/"' +
            '},' +
            '{' +
              '"name": "mew",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/151/"' +
            '},' +
            '{' +
              '"name": "cleffa",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/173/"' +
            '},' +
            '{' +
              '"name": "igglybuff",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/174/"' +
            '},' +
            '{' +
              '"name": "togepi",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/175/"' +
            '},' +
            '{' +
              '"name": "togetic",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/176/"' +
            '},' +
            '{' +
              '"name": "politoed",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/186/"' +
            '},' +
            '{' +
              '"name": "sunflora",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/192/"' +
            '},' +
            '{' +
              '"name": "smoochum",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/238/"' +
            '},' +
            '{' +
              '"name": "blissey",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/242/"' +
            '},' +
            '{' +
              '"name": "treecko",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/252/"' +
            '},' +
            '{' +
              '"name": "grovyle",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/253/"' +
            '},' +
            '{' +
              '"name": "sceptile",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/254/"' +
            '},' +
            '{' +
              '"name": "nuzleaf",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/274/"' +
            '},' +
            '{' +
              '"name": "shiftry",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/275/"' +
            '},' +
            '{' +
              '"name": "whismur",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/293/"' +
            '},' +
            '{' +
              '"name": "loudred",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/294/"' +
            '},' +
            '{' +
              '"name": "exploud",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/295/"' +
            '},' +
            '{' +
              '"name": "gulpin",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/316/"' +
            '},' +
            '{' +
              '"name": "swalot",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/317/"' +
            '},' +
            '{' +
              '"name": "piplup",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/393/"' +
            '},' +
            '{' +
              '"name": "buneary",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/427/"' +
            '},' +
            '{' +
              '"name": "lopunny",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/428/"' +
            '},' +
            '{' +
              '"name": "mime-jr",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/439/"' +
            '},' +
            '{' +
              '"name": "happiny",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/440/"' +
            '},' +
            '{' +
              '"name": "finneon",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/456/"' +
            '},' +
            '{' +
              '"name": "lumineon",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/457/"' +
            '},' +
            '{' +
              '"name": "togekiss",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/468/"' +
            '},' +
            '{' +
              '"name": "regigigas",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/486/"' +
            '},' +
            '{' +
              '"name": "audino",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/531/"' +
            '},' +
            '{' +
              '"name": "timburr",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/532/"' +
            '},' +
            '{' +
              '"name": "gurdurr",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/533/"' +
            '},' +
            '{' +
              '"name": "conkeldurr",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/534/"' +
            '},' +
            '{' +
              '"name": "trubbish",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/568/"' +
            '},' +
            '{' +
              '"name": "garbodor",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/569/"' +
            '},' +
            '{' +
              '"name": "minccino",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/572/"' +
            '},' +
            '{' +
              '"name": "cinccino",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/573/"' +
            '},' +
            '{' +
              '"name": "gothita",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/574/"' +
            '},' +
            '{' +
              '"name": "gothorita",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/575/"' +
            '},' +
            '{' +
              '"name": "gothitelle",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/576/"' +
            '},' +
            '{' +
              '"name": "alomomola",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/594/"' +
            '},' +
            '{' +
              '"name": "mienfoo",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/619/"' +
            '},' +
            '{' +
              '"name": "mienshao",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/620/"' +
            '},' +
            '{' +
              '"name": "golett",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/622/"' +
            '},' +
            '{' +
              '"name": "golurk",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/623/"' +
            '},' +
            '{' +
              '"name": "froakie",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/656/"' +
            '},' +
            '{' +
              '"name": "frogadier",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/657/"' +
            '},' +
            '{' +
              '"name": "greninja",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/658/"' +
            '},' +
            '{' +
              '"name": "helioptile",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/694/"' +
            '},' +
            '{' +
              '"name": "heliolisk",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/695/"' +
            '},' +
            '{' +
              '"name": "popplio",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/728/"' +
            '},' +
            '{' +
              '"name": "brionne",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/729/"' +
            '},' +
            '{' +
              '"name": "primarina",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/730/"' +
            '},' +
            '{' +
              '"name": "oricorio-baile",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/741/"' +
            '},' +
            '{' +
              '"name": "salazzle",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/758/"' +
            '},' +
            '{' +
              '"name": "nihilego",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/793/"' +
            '},' +
            '{' +
              '"name": "sobble",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/816/"' +
            '},' +
            '{' +
              '"name": "drizzile",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/817/"' +
            '},' +
            '{' +
              '"name": "inteleon",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/818/"' +
            '},' +
            '{' +
              '"name": "mr-rime",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/866/"' +
            '},' +
            '{' +
              '"name": "calyrex",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/898/"' +
            '},' +
            '{' +
              '"name": "sceptile-mega",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10065/"' +
            '},' +
            '{' +
              '"name": "audino-mega",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10069/"' +
            '},' +
            '{' +
              '"name": "lopunny-mega",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10088/"' +
            '},' +
            '{' +
              '"name": "grimer-alola",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10112/"' +
            '},' +
            '{' +
              '"name": "muk-alola",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10113/"' +
            '},' +
            '{' +
              '"name": "greninja-battle-bond",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10116/"' +
            '},' +
            '{' +
              '"name": "greninja-ash",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10117/"' +
            '},' +
            '{' +
              '"name": "oricorio-pom-pom",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10123/"' +
            '},' +
            '{' +
              '"name": "oricorio-pau",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10124/"' +
            '},' +
            '{' +
              '"name": "oricorio-sensu",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10125/"' +
            '},' +
            '{' +
              '"name": "salazzle-totem",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10129/"' +
            '},' +
            '{' +
              '"name": "mr-mime-galar",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10168/"' +
            '},' +
            '{' +
              '"name": "calyrex-ice",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10193/"' +
            '},' +
            '{' +
              '"name": "calyrex-shadow",' +
              '"url": "https://pokeapi.co/api/v2/pokemon/10194/"' +
            '}' +
          '],' +
          '"machines": [],' +
          '"meta": {' +
            '"ailment": {' +
              '"name": "none",' +
              '"url": "https://pokeapi.co/api/v2/move-ailment/0/"' +
            '},' +
            '"ailment_chance": 0,' +
            '"category": {' +
              '"name": "damage",' +
              '"url": "https://pokeapi.co/api/v2/move-category/0/"' +
            '},' +
            '"crit_rate": 0,' +
            '"drain": 0,' +
            '"flinch_chance": 0,' +
            '"healing": 0,' +
            '"max_hits": null,' +
            '"max_turns": null,' +
            '"min_hits": null,' +
            '"min_turns": null,' +
            '"stat_chance": 0' +
          '},' +
          '"name": "pound",' +
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
              '"name": "Écras Face"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "de",' +
                '"url": "https://pokeapi.co/api/v2/language/6/"' +
              '},' +
              '"name": "Klaps"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "es",' +
                '"url": "https://pokeapi.co/api/v2/language/7/"' +
              '},' +
              '"name": "Destructor"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "it",' +
                '"url": "https://pokeapi.co/api/v2/language/8/"' +
              '},' +
              '"name": "Botta"' +
            '},' +
            '{' +
              '"language": {' +
                '"name": "en",' +
                '"url": "https://pokeapi.co/api/v2/language/9/"' +
              '},' +
              '"name": "Pound"' +
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
          '"past_values": [],' +
          '"power": 40,' +
          '"pp": 35,' +
          '"priority": 0,' +
          '"stat_changes": [],' +
          '"super_contest_effect": {' +
            '"url": "https://pokeapi.co/api/v2/super-contest-effect/5/"' +
          '},' +
          '"target": {' +
            '"name": "selected-pokemon",' +
            '"url": "https://pokeapi.co/api/v2/move-target/10/"' +
          '},' +
          '"type": {' +
            '"name": "normal",' +
            '"url": "https://pokeapi.co/api/v2/type/1/"' +
          '}' +
        '}';
        SingleRequestMock movesMock = new SingleRequestMock(
            200,
            'OK',
            fakeResponse,
            null
        );
        Test.setMock(HttpCalloutMock.class, movesMock);
        Test.startTest();
            InsertMovesBatch movesBatch = new InsertMovesBatch(index);
            Id batchId = Database.executeBatch(movesBatch, 1);
        Test.stopTest();
        AsyncApexJob job = [
                            SELECT Id, Status, JobItemsProcessed, TotalJobItems, NumberOfErrors 
                            FROM AsyncApexJob 
                            WHERE ID = :batchId
                           ];
        Moves__c moves = [
                          SELECT Id, ExtId__c, Accurancy__c, Target__c, Power__c, Type__c 
                          FROM Moves__c 
                          WHERE ExtId__c = 1
                         ];
        System.assertEquals(1, moves.ExtId__c);
        System.assertEquals('100', moves.Accurancy__c);
        System.assertEquals('selected-pokemon', moves.Target__c);
        System.assertEquals(40, moves.Power__c);
        System.assertEquals('Normal', moves.Type__c);
        System.assertEquals('Completed', job.Status);
        System.assertEquals(1, job.JobItemsProcessed);
    }

    @isTest static void insertMovesWithoutSuccessfullyTest() {
        List<Integer> index = new List<Integer>();
        index.add(1);
        SingleRequestMock movesMock = new SingleRequestMock(
            404,
            'Not Found',
            '',
            null
        );
        Test.setMock(HttpCalloutMock.class, movesMock);
        Test.startTest();
            InsertMovesBatch movesBatch = new InsertMovesBatch(index);
            Id batchId = Database.executeBatch(movesBatch, 1);
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