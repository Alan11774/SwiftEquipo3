import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var pokemonTableView: UITableView!
    
    let dataManager = PokemonDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataManager.fecth()
//        var i = 0
//        while i < dataManager.countPokemons() {
//            print(dataManager.getPokemon(at: i))
//            i += 1
//        }
    }
}


extension PokemonViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        cell.pokemonLabel.text = pokemon.name
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        return cell
    }
    
}
