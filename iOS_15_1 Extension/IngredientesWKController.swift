//
//  IngredientesWKController.swift
//  iOS_10_1
//
//  Created by Juan Carlos Carbajal Ipenza on 18/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesWKController: WKInterfaceController {
    var jamon: Bool = false
    var pepperoni: Bool = false
    var pavo: Bool = false
    var salchicha: Bool = false
    var aceituna: Bool = false
    var cebolla: Bool = false
    var pimiento: Bool = false
    var pina: Bool = false
    var anchoa: Bool = false
    var carne: Bool = false
    var valorContexto: Valor = Valor()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.setTitle("Ingredientes")
        valorContexto = context as! Valor
    }
    override func willActivate() {
        super.willActivate()
    }
    override func didDeactivate() {
        super.didDeactivate()
    }
    @IBAction func continuar() {
        valorContexto.ingredientes.removeAll()
        if (jamon) {
            valorContexto.ingredientes.append("Jamón")
        }
        if (pepperoni) {
            valorContexto.ingredientes.append("Pepperoni")
        }
        if (pavo) {
            valorContexto.ingredientes.append("Pavo")
        }
        if (salchicha) {
            valorContexto.ingredientes.append("Salchicha")
        }
        if (aceituna) {
            valorContexto.ingredientes.append("Aceituna")
        }
        if (cebolla) {
            valorContexto.ingredientes.append("Cebolla")
        }
        if (pimiento) {
            valorContexto.ingredientes.append("Pimiento")
        }
        if (pina) {
            valorContexto.ingredientes.append("Piña")
        }
        if (anchoa) {
            valorContexto.ingredientes.append("Anchoa")
        }
        if (carne) {
            valorContexto.ingredientes.append("Carne")
        }
        if (valorContexto.ingredientes.count>=1&&valorContexto.ingredientes.count<=5) {
            pushControllerWithName("idConfirmacion", context: valorContexto)
            print(valorContexto.ingredientes)
        }
    }
    @IBAction func guardarJamon(value: Bool) {
        jamon = value
    }
    @IBAction func guardarPepperoni(value: Bool) {
        pepperoni = value
    }
    @IBAction func guardarPavo(value: Bool) {
        pavo = value
    }
    @IBAction func guardarSalchicha(value: Bool) {
        salchicha = value
    }
    @IBAction func guardarAceituna(value: Bool) {
        aceituna = value
    }
    @IBAction func guardarCebolla(value: Bool) {
        cebolla = value
    }
    @IBAction func guardarPimiento(value: Bool) {
        pimiento = value
    }
    @IBAction func guardarPina(value: Bool) {
        pina = value
    }
    @IBAction func guardarAnchoa(value: Bool) {
        anchoa = value
    }
    @IBAction func guardarCarne(value: Bool) {
        carne = value
    }
}
