//
//  ViewController.swift
//  MVC
//
//  Created by Alan Ulises on 16/08/24.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var pokemonTableView: UITableView!
    
    let dataManager = PokemonManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        dataManager.fetch()
//        var i = 0
//        while i < dataManager.countPokemon(){
//            print(dataManager.getpokemon(at: i))
//            i += 1
//        }
    }

}

extension PokemonViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
