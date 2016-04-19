//
//  ConfirmacionWKController.swift
//  iOS_10_1
//
//  Created by Juan Carlos Carbajal Ipenza on 18/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionWKController: WKInterfaceController {
    @IBOutlet var tamano: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    @IBOutlet var cocina: WKInterfaceLabel!
    @IBOutlet var confirmarButton: WKInterfaceButton!
    @IBOutlet var cambiarSeleccionButton: WKInterfaceButton!
    var valorContexto: Valor = Valor()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.setTitle("Confirmación")
        cocina.setHidden(true)
        valorContexto = context as! Valor
    }

    override func willActivate() {
        super.willActivate()
        tamano.setText(valorContexto.tamano)
        masa.setText(valorContexto.masa)
        queso.setText(valorContexto.queso)
        var ingredientesSalida: String = ""
        var i = 0
        while i < valorContexto.ingredientes.count - 1 {
            ingredientesSalida += valorContexto.ingredientes[i] + ", "
            i += 1
        }
        ingredientesSalida += valorContexto.ingredientes[i]
        ingredientes.setText(String(ingredientesSalida))
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    @IBAction func confirmar() {
        cocina.setHidden(false)
        confirmarButton.setHidden(true)
        cambiarSeleccionButton.setHidden(true)
    }

}
