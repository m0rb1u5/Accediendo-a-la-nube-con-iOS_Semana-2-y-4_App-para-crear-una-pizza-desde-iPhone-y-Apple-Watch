//
//  Valor.swift
//  iOS_10_1
//
//  Created by Juan Carlos Carbajal Ipenza on 18/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    var tamano: String? = nil
    var masa: String? = nil
    var queso: String? = nil
    var ingredientes: [String] = []
    
    override init() {
    }
    init(valor: Valor) {
        self.tamano = valor.tamano
        self.masa = valor.masa
        self.queso = valor.queso
        self.ingredientes = valor.ingredientes
    }
}
