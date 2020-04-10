//
//  ViewController.swift
//  BuilderPattern
//
//  Created by Ferraz on 14/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pokedex = [Pokemon]()
    var digimons = [Digimon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makePokemonDigimon()
        printAll()
    }
    
    func makePokemonDigimon(){
        let builder1 = PokemonConstructor()
        let director = Director(builder: builder1)
        
        director.createPokemonCute(builder: builder1, name: "Wooloo")
        pokedex.append(builder1.getPokemon())
        
        director.createPokemonDragon(builder: builder1, name: "Dragonite")
        pokedex.append(builder1.getPokemon())
        
        let builder2 = DigimonConstructor()
        director.setBuilder(builder: builder2)
        
        director.createDigimon(builder: builder2, name: "Agumon")
        digimons.append(builder2.getDigimon())
    }
    
    func printAll(){
        for pokemon in pokedex{
            print(pokemon.name)
        }
        for digimon in digimons{
            print(digimon.name)
        }
    }

}
