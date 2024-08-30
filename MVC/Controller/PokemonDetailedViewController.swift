//
//  PokemonDetailedViewController.swift
//  MVC
//
//  Created by Alan Ulises on 24/08/24.
//

import UIKit

class PokemonDetailedViewController: UIViewController {
    var receivedPokemon: Pokemon?
    @IBOutlet weak var pokemonImageResult: UIImageView!
    @IBOutlet weak var pokemonAbillityResult: UILabel!
    @IBOutlet weak var pokemonCategoryResult: UILabel!
    @IBOutlet weak var pokemonNameResult: UILabel!
    @IBAction func closeDetail(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let receivedPokemon = receivedPokemon{
            pokemonImageResult.image = UIImage(named: receivedPokemon.image)
            pokemonNameResult.text = receivedPokemon.name
            pokemonCategoryResult.text = receivedPokemon.category
            pokemonAbillityResult.text = receivedPokemon.ability
        }
    }
    

}
