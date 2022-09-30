import { LightningElement, api } from 'lwc';

export default class Pokemon extends LightningElement {
    @api pokemon;
    
    handleAbility() {
		const abilityEvent = new CustomEvent('abilityview', {
			detail: this.pokemon.Ability__c
		});
		this.dispatchEvent(abilityEvent);
	}
	
    handleMoves1() {
		const movesEvent = new CustomEvent('moveview', {
			detail: this.pokemon.Slot1__c
		});
		this.dispatchEvent(movesEvent);
	}

    handleMoves2() {
		const movesEvent = new CustomEvent('moveview', {
			detail: this.pokemon.Slot2__c
		});
		this.dispatchEvent(movesEvent);
	}

    handleMoves3() {
		const movesEvent = new CustomEvent('moveview', {
			detail: this.pokemon.Slot3__c
		});
		this.dispatchEvent(movesEvent);
	}

    handleMoves4() {
		const movesEvent = new CustomEvent('moveview', {
			detail: this.pokemon.Slot4__c
		});
		this.dispatchEvent(movesEvent);
	}
}