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
            ["image":"9", "name":"Pidgey"],
            ["image":"10", "name":"Raichu"],
            ["image":"11", "name":"Rattata"],
            ["image":"12", "name":"Vaporeon"],
            ["image":"13", "name":"Jynx"],
            ["image":"14", "name":"Venusaur"],
            ["image":"15", "name":"Linea"],
            ["image":"16", "name":"Slowbro"],
            ["image":"17", "name":"Dewgong"],
            ["image":"18", "name":"Spearow"],
            ["image":"19", "name":"Wigglytuff"],
            ["image":"20", "name":"Scyther"],
            ["image":"21", "name":"Golduk"],
            ["image":"22", "name":"Lapras"],
            ["image":"23", "name":"Sandshrew"]
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
