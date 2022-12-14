//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//
// The supplied json has fields with names that are not valid in apex
// and so can only be parsed with explicitly generated code, this option
// was auto selected for you.
public class PokeApiPokemonJSON {
    public List<Abilities> abilities {get;set;}
	public Integer height {get;set;}
	public Integer id {get;set;}
	public List<Moves> moves {get;set;}
	public String name {get;set;}
	public Integer order {get;set;}
	public Sprites sprites {get;set;}
	public List<Stats> stats {get;set;}
	public List<Types> types {get;set;}
	public Integer weight {get;set;}
	public PokeApiPokemonJSON(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'abilities') {
						abilities = arrayOfAbilities(parser);
					} else if (text == 'height') {
						height = parser.getIntegerValue();
					} else if (text == 'id') {
						id = parser.getIntegerValue();
					} else if (text == 'moves') {
						moves = arrayOfMoves(parser);
					} else if (text == 'name') {
						name = parser.getText();
					} else if (text == 'order') {
						order = parser.getIntegerValue();
					} else if (text == 'sprites') {
						sprites = new Sprites(parser);
					} else if (text == 'stats') {
						stats = arrayOfStats(parser);
					} else if (text == 'types') {
						types = arrayOfTypes(parser);
					} else if (text == 'weight') {
						weight = parser.getIntegerValue();
					} else {
						consumeObject(parser);
					}
				}
			}
		}
	}
	public class Ability {
		public String name {get;set;}
		public String url {get;set;}
		public Ability(JSONParser parser) {
			name = '';
			url = '';
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Ability consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	public class Abilities {
		public Ability ability {get;set;}
		public Abilities(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ability') {
							ability = new Ability(parser);
						} else {
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	public class Moves {
		public Ability move {get;set;}
		public Moves(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'move') {
							move = new Ability(parser);
						} else {
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	public class Sprites {
		public String front_default {get;set;} 
		public String back_default {get;set;} 
		public Sprites(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'back_default') {
							back_default = parser.getText();
						} else if (text == 'front_default') {
							front_default = parser.getText();
						} else {
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	public class Stats {
		public Integer base_stat {get;set;}
		public Ability stat {get;set;}
		public Stats(JSONParser parser) {
			base_stat = 0;
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'base_stat') {
							base_stat = parser.getIntegerValue();
						} else if (text == 'stat') {
							stat = new Ability(parser);
						} else {
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	public class Types {
		public Ability type {get;set;}
		public Types(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'type') {
							type = new Ability(parser);
						} else {
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}
	public static PokeApiPokemonJSON parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new PokeApiPokemonJSON(parser);
	}
    private static List<Ability> arrayOfAbility(System.JSONParser p) {
        List<Ability> res = new List<Ability>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Ability(p));
        }
        return res;
    }
    private static List<Abilities> arrayOfAbilities(System.JSONParser p) {
        List<Abilities> res = new List<Abilities>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Abilities(p));
        }
        return res;
    }
	private static List<Moves> arrayOfMoves(System.JSONParser p) {
        List<Moves> res = new List<Moves>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Moves(p));
        }
        return res;
    }
	private static List<Stats> arrayOfStats(System.JSONParser p) {
        List<Stats> res = new List<Stats>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Stats(p));
        }
        return res;
    }
	private List<PokeApiPokemonJSON.Types> arrayOfTypes(System.JSONParser p){
		List<PokeApiPokemonJSON.Types> res = new List<PokeApiPokemonJSON.Types>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new PokeApiPokemonJSON.Types(p));
        }
        return res;
	} 
}