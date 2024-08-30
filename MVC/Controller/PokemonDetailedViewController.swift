//
//  PokemonDetailedViewController.swift
//  MVC
//
//  Created by Alan Ulises on 24/08/24.
//

import UIKit

class PokemonDetailedViewController: UIViewController {
    var receivedPokemon: Pokemon?
    @IBAction func closeDetail(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(receivedPokemon)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
