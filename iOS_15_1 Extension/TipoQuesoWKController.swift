//
//  TipoQuesoWKController.swift
//  iOS_10_1
//
//  Created by Juan Carlos Carbajal Ipenza on 18/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit
import Foundation


class TipoQuesoWKController: WKInterfaceController {
    let mozarela: String = "Mozarela"
    let cheddar: String = "Cheddar"
    let parmesano: String = "Parmesano"
    let sinQueso: String = "Sin queso"
    var valorContexto: Valor = Valor()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.setTitle("Tipo de Queso")
        valorContexto = context as! Valor
    }
    override func willActivate() {
        super.willActivate()
    }
    override func didDeactivate() {
        super.didDeactivate()
    }
    @IBAction func guardarMozarela() {
        setContexto(mozarela)
    }
    @IBAction func guardarCheddar() {
        setContexto(cheddar)
    }
    @IBAction func guardarParmesano() {
        setContexto(parmesano)
    }
    @IBAction func guardarSinQueso() {
        setContexto(sinQueso)
    }
    func setContexto(opcion: String) {
        valorContexto.queso = opcion
        pushControllerWithName("idIngredientes", context: valorContexto)
        print(opcion)
    }
}
