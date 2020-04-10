//
//  Director.swift
//  BuilderPattern
//
//  Created by Ferraz on 14/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

class Director{
    var builder: BuilderProtocol
    
    init(builder: BuilderProtocol){
        self.builder = builder
    }
    
    func setBuilder(builder: BuilderProtocol){
        self.builder = builder
    }
    
    func createPokemonDragon(builder: BuilderProtocol, name: String){
        self.builder.buildName(name)
        self.builder.buildEggGroup("dragon")
        self.builder.buildID()
        self.builder.buildNumberEvolutions(2)
        if Int.random(in: 0...10) == 1{
            self.builder.buildShiny()
        }
    }
    
    func createPokemonCute(builder: BuilderProtocol, name: String){
        self.builder.buildName(name)
        self.builder.buildEggGroup("cute")
        self.builder.buildID()
        self.builder.buildNumberEvolutions(1)
        if Int.random(in: 0...3) == 1{
            self.builder.buildShiny()
        }
    }
    
    func createDigimon(builder: BuilderProtocol, name: String){
        self.builder.buildName(name)
        self.builder.buildID()
        let num = Int.random(in: 1...3)
        self.builder.buildNumberEvolutions(num)
    }
}
