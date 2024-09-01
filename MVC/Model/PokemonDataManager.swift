//
//  PokemonDataManager.swift
//  MVC
//
//  Created by Team 3 on 16/08/24.
//

import Foundation


class PokemonDataManager {
    
    //MARK: Properties
    private var pokemons : [Pokemon] = []
    
    
    //MARK: data source array :P
        let pokemonsArray = [
            ["image":"0", "name": "Wartortle", "category":"Turtle", "ability": "Torrent"],
            ["image":"1", "name": "Bulbasaur", "category":"seed","ability": "thickness"],
            ["image":"2", "name": "Blastoise", "category":"shell", "ability": "Torrent"],
            ["image":"3", "name":"Butterfree", "category":"butterfly", "ability": "Composed eye"], 
            ["image":"4", "name":"Ivysaur", "category":"seed", "ability": "thick"],
            ["image":"5", "name":"Jigglypuf", "category":"globe", "ability": "great charm"],
            ["image":"6", "name":"Charmander", "category":"lizzard", "ability": "flame sea"],
            ["image":"7", "name":"Meowth", "category":"cat", "ability": "expert"],
            ["image":"8", "name":"Alacazam", "category":"psi", "ability": "mental strength"],
            ["image":"9", "name":"Pidgey", "category": "Tiny Bird", "ability": "Keen Eye"],
            ["image":"10", "name":"Raichu", "category": "Mouse", "ability": "Static"],
            ["image":"11", "name":"Rattata", "category": "Mouse", "ability": "Guts"],
            ["image":"12", "name":"Vaporeon", "category": "Bubble Jet", "ability": "Water Absorb"],
            ["image":"13", "name":"Jynx", "category": "Human Shape", "ability": "Forewarn"],
            ["image":"14", "name":"Venusaur", "category": "Seed", "ability": "Overgrow"],
            ["image":"15", "name":"Linoone", "category": "Rushing", "ability": "Pickup"],
            ["image":"16", "name":"Slowbro", "category": "Hermit Crab", "ability": "Own Tempo"],
            ["image":"17", "name":"Dewgong", "category": "Sea Lion", "ability": "Thick Fat"],
            ["image":"18", "name":"Spearow", "category": "Tiny Bird", "ability": "Keen Eye"],
            ["image":"19", "name":"Wigglytuff", "category": "Balloon", "ability": "Cute Charm"],
            ["image":"20", "name":"Scyther", "category": "Mantis", "ability": "Swarm"],
            ["image":"21", "name":"Golduk", "category": "Duck", "ability": "Damp"],
            ["image":"22", "name":"Lapras", "category": "Transport", "ability": "Water Absorb"],
            ["image":"23", "name":"Sandshrew", "category": "Mouse", "ability": "Sand Veil"]
            ]
    
    //MARK:Methods
    func fecth() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        pokemons.count
    }
    
}
