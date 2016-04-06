//
//  ConfirmacionController.swift
//  iOS_10_1
//
//  Created by Juan Carlos Carbajal Ipenza on 6/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit

class ConfirmacionController: UIViewController {
    @IBOutlet weak var tamano: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    @IBOutlet weak var confirmarButton: UIButton!
    @IBOutlet weak var cambiarSeleccion: UIButton!
    @IBOutlet weak var cocina: UILabel!
    
    var tamanoPizza: String? = nil
    var tipoMasa: String? = nil
    var tipoQueso: String? = nil
    var ingredientes: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Confirmación"
        cocina.hidden = true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewWillAppear(animated: Bool) {
        tamano.text = String(tamanoPizza!)
        masa.text = String(tipoMasa!)
        queso.text = String(tipoQueso!)
        var ingredientesSalida: String = ""
        var i = 0
        while i < ingredientes.count - 1 {
            ingredientesSalida += ingredientes[i] + ", "
            i += 1
        }
        ingredientesSalida += ingredientes[i]
        ingredientesLabel.text = String(ingredientesSalida)
    }
    
    @IBAction func confirmar(sender: AnyObject) {
        confirmarButton.hidden = true
        cambiarSeleccion.hidden = true
        cocina.hidden = false
    }
}
