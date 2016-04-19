//
//  TipoMasaWKController.swift
//  iOS_10_1
//
//  Created by Juan Carlos Carbajal Ipenza on 18/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasaWKController: WKInterfaceController {
    let delgada: String = "Delgada"
    let crujiente: String = "Crujiente"
    let gruesa: String = "Gruesa"
    var valorContexto: Valor = Valor()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.setTitle("Tipo de Masa")
        valorContexto = context as! Valor
    }
    override func willActivate() {
        super.willActivate()
    }
    override func didDeactivate() {
        super.didDeactivate()
    }
    @IBAction func guardarDelgada() {
        setContexto(delgada)
    }
    @IBAction func guardarCrujiente() {
        setContexto(crujiente)
    }
    @IBAction func guardarGruesa() {
        setContexto(gruesa)
    }
    func setContexto(opcion: String) {
        valorContexto.masa = opcion
        pushControllerWithName("idQueso", context: valorContexto)
        print(opcion)
    }
}
