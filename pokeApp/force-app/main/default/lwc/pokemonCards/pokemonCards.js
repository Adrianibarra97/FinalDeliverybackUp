import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import { NavigationMixin } from 'lightning/navigation';
import POKEMON_LIST_UPDATE_MESSAGE from '@salesforce/messageChannel/PokemonListUpdate__c';
import getLeakedPokemons from '@salesforce/apex/GetPokemonsData.getLeakedPokemons';

export default class PokemonCards extends NavigationMixin(LightningElement) {
    pokemons;
    loading = true;
    searchName = '';
    generation = 0;
    generationLabel = 'All';
    types = [];

    get generationOptions() {
        return [
            { label: 'All', value: 'All' },
            { label: 'First Generation', value: 'First Generation' },
            { label: 'Second Generation', value: 'Second Generation' },
            { label: 'Third Generation', value: 'Third Generation' },
            { label: 'Fourth Generation', value: 'Fourth Generation' },
            { label: 'Fifth Generation', value: 'Fifth Generation' },
            { label: 'Sixth Generation', value: 'Sixth Generation' },
            { label: 'Seventh Generation', value: 'Seventh Generation' },
            { label: 'Eighth Generation', value: 'Eighth Generation' }
        ];
    }

    get typesOptions() {
        return [
            { label: 'Normal', value: 'Normal' },
            { label: 'Fighting', value: 'Fighting' },
            { label: 'Flying', value: 'Flying' },
            { label: 'Poison', value: 'Poison' },
            { label: 'Ground', value: 'Ground' },
            { label: 'Rock', value: 'Rock' },
            { label: 'Bug', value: 'Bug' },
            { label: 'Ghost', value: 'Ghost' },
            { label: 'Steel', value: 'Steel' },
            { label: 'Fire', value: 'Fire' },
            { label: 'Water', value: 'Water' },
            { label: 'Grass', value: 'Grass' },
            { label: 'Electric', value: 'Electric' },
            { label: 'Psychic', value: 'Psychic' },
            { label: 'Ice', value: 'Ice' },
            { label: 'Dragon', value: 'Dragon' },
            { label: 'Dark', value: 'Dark' },
            { label: 'Fairy', value: 'Fairy' }
        ];
    }

    @wire(MessageContext)
	messageContext;

    @wire(getLeakedPokemons, {
        searchName: '$searchName',
        generation: '$generation',
        types: '$types'
    })
    loadPokemons(result) {
        this.pokemons = result;
        if (result.data) {
			const message = {
				pokemons: result.data
			};
			publish(this.messageContext, POKEMON_LIST_UPDATE_MESSAGE, message);
		}
    }

    connectedCallback() {
        this.delayTimeout = setTimeout(() => {
			this.loading = false;
		}, 1000);
    }

    handleSearchNameChange(event) {
		window.clearTimeout(this.delayTimeout);
		const searchName = event.target.value;
		this.delayTimeout = setTimeout(() => {
			this.searchName = searchName;
		}, 300);
	}

    handleGeneration(event){
        this.generationLabel = event.detail.value;
        if(event.detail.value == 'First Generation') this.generation = 1;
        else if(event.detail.value == 'Second Generation') this.generation = 2;
        else if(event.detail.value == 'Third Generation') this.generation = 3;
        else if(event.detail.value == 'Fourth Generation') this.generation = 4;
        else if(event.detail.value == 'Fifth Generation') this.generation = 5;
        else if(event.detail.value == 'Sixth Generation') this.generation = 6;
        else if(event.detail.value == 'Seventh Generation') this.generation = 7;
        else if(event.detail.value == 'Eighth Generation') this.generation = 8;
        else this.generation = 0;
    }

    handleTypes(event){
        this.types = event.detail.value;
    }

    handleAbilityView(event) {
        console.log(event.detail);
		const abilityId = event.detail;
		this[NavigationMixin.Navigate]({
			type: 'standard__recordPage',
			attributes: {
				recordId: abilityId,
				objectApiName: 'Ability__c',
				actionName: 'view',
			},
		});
    }

    handleMoveView(event) {
        console.log(event.detail);
		const movesId = event.detail;
		this[NavigationMixin.Navigate]({
			type: 'standard__recordPage',
			attributes: {
				recordId: movesId,
				objectApiName: 'Moves__c',
				actionName: 'view',
			},
		});
    }
}