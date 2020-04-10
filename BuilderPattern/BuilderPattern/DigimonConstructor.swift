//
//  DigimonConstructor.swift
//  BuilderPattern
//
//  Created by Ferraz on 14/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

class DigimonConstructor: BuilderProtocol{
    static var iD: Int = 0
    var digimon = Digimon()
    
    func reset() {
        self.digimon = Digimon()
    }
    
    func buildName(_ name: String) {
        self.digimon.name = name
    }
    
    func buildID() {
        self.digimon.id = DigimonConstructor.iD
        DigimonConstructor.iD += 1
    }
    
    func buildEggGroup(_ eggG: String) {
        print("Digimon nao tem egg Group")
    }
    
    func buildShiny() {
        print("Digimon nao tem shiny")
    }
    
    func buildNumberEvolutions(_ numberEvolutions: Int) {
        self.digimon.numberEvolution = numberEvolutions
    }
    
    func getDigimon() -> Digimon{
        let returnedDigimon = digimon
        self.reset()
        return returnedDigimon
    }
    
    
}
