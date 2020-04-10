//
//  PokemonConstructor.swift
//  BuilderPattern
//
//  Created by Ferraz on 14/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

/// Classe construtora de Pokemons
class PokemonConstructor: BuilderProtocol{
    
    /// id do proximo pokemon a ser criado
    static var idCreated = 0
    /// pokemon que esta sendo criado
    var pokemon = Pokemon()
    
    
    /**
     Reset para um novo pokemon ser criado
     */
    func reset(){
        self.pokemon = Pokemon()
    }
    
    /**
     Construtor para o nome do pokemon
     - parameter name: nome do pokemon
     */
    func buildName(_ name: String){
        self.pokemon.name = name
    }
    
    /**
     construtor do ID do pokemon
     */
    func buildID(){
        self.pokemon.id = PokemonConstructor.idCreated
        PokemonConstructor.idCreated += 1
    }
    
    /**
     construtor para o egg group do pokemon
     - parameter eggG: nome do egg group do pokemon
     */
    func buildEggGroup(_ eggG: String){
        self.pokemon.eggGroup = eggG
    }
    
    /**
     construtor para settar o pokemon como shiny
     */
    func buildShiny(){
        self.pokemon.isShiny = true
    }
    
    /**
     construtor para numero de evolucoes a mais que o pokemon tem
     - parameter numberEvolutions: numero de evolucoes extras que o pokemon tem
     */
    func buildNumberEvolutions(_ numberEvolutions: Int){
        self.pokemon.numberOfEvolutions = numberEvolutions
    }
    
    /**
     retorna o pokemon construido
     */
    func getPokemon() -> Pokemon{
        let newPokemon = self.pokemon
        self.reset()
        return newPokemon
    }
    
}
