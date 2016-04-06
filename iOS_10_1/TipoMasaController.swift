//
//  TipoMasaController.swift
//  iOS_10_1
//
//  Created by Juan Carlos Carbajal Ipenza on 5/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit

class TipoMasaController: UIViewController {
    var tamanoPizza: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Tipo de Masa"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let boton = sender as! UIButton
        let resultado: String = boton.titleLabel!.text!
        print(resultado)
        let sigVista = segue.destinationViewController as! TipoQuesoController
        sigVista.tamanoPizza = self.tamanoPizza
        sigVista.tipoMasa = resultado
    }
}
