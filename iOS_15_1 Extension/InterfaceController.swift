//
//  InterfaceController.swift
//  iOS_15_1 Extension
//
//  Created by Juan Carlos Carbajal Ipenza on 18/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    let chica: String = "Chica"
    let mediana: String = "Mediana"
    let grande: String = "Grande"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.setTitle("Tamaño")
    }
    override func willActivate() {
        super.willActivate()
    }
    override func didDeactivate() {
        super.didDeactivate()
    }
    @IBAction func guardarChica() {
        setContexto(chica)
    }
    @IBAction func guardarMediana() {
        setContexto(mediana)
    }
    
    @IBAction func guardarGrande() {
        setContexto(grande)
    }
    func setContexto(opcion: String) {
        let valorContexto = Valor()
        valorContexto.tamano = opcion
        pushControllerWithName("idMasa", context: valorContexto)
        print(opcion)
    }
}
