//
//  BuilderProtocol.swift
//  BuilderPattern
//
//  Created by Ferraz on 14/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

/**
 Protocolo para construir o pokemon
 */
protocol BuilderProtocol {
    func reset()
    func buildName(_ name: String)
    func buildID()
    func buildEggGroup(_ eggG: String)
    func buildShiny()
    func buildNumberEvolutions(_ numberEvolutions: Int)
}
