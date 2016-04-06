//
//  IngredientesController.swift
//  iOS_10_1
//
//  Created by Juan Carlos Carbajal Ipenza on 5/04/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit

class IngredientesController: UIViewController {
    @IBOutlet weak var jamon: UIButton!
    @IBOutlet weak var pepperoni: UIButton!
    @IBOutlet weak var pavo: UIButton!
    @IBOutlet weak var salchicha: UIButton!
    @IBOutlet weak var aceituna: UIButton!
    @IBOutlet weak var cebolla: UIButton!
    @IBOutlet weak var pimiento: UIButton!
    @IBOutlet weak var pina: UIButton!
    @IBOutlet weak var anchoa: UIButton!
    @IBOutlet weak var carne: UIButton!
    
    var tamanoPizza: String? = nil
    var tipoMasa: String? = nil
    var tipoQueso: String? = nil
    var resultado: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Ingredientes"
        jamon.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        pepperoni.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        pavo.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        salchicha.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        aceituna.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        cebolla.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        pimiento.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        pina.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        anchoa.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
        carne.addTarget(self, action: "buttonClicked:",
                              forControlEvents: UIControlEvents.TouchUpInside)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        resultado.removeAll()
        if (jamon.selected) {
            resultado.append((jamon.titleLabel?.text)!)
        }
        if (pepperoni.selected) {
            resultado.append((pepperoni.titleLabel?.text)!)
        }
        if (pavo.selected) {
            resultado.append((pavo.titleLabel?.text)!)
        }
        if (salchicha.selected) {
            resultado.append((salchicha.titleLabel?.text)!)
        }
        if (aceituna.selected) {
            resultado.append((aceituna.titleLabel?.text)!)
        }
        if (cebolla.selected) {
            resultado.append((cebolla.titleLabel?.text)!)
        }
        if (pimiento.selected) {
            resultado.append((pimiento.titleLabel?.text)!)
        }
        if (pina.selected) {
            resultado.append((pina.titleLabel?.text)!)
        }
        if (anchoa.selected) {
            resultado.append((anchoa.titleLabel?.text)!)
        }
        if (carne.selected) {
            resultado.append((carne.titleLabel?.text)!)
        }
        print(resultado)
        if (resultado.count>=1&&resultado.count<=5) {
           return true
        }
        else {
            return false
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ConfirmacionController
        sigVista.tamanoPizza = self.tamanoPizza
        sigVista.tipoMasa = self.tipoMasa
        sigVista.tipoQueso = self.tipoQueso
        sigVista.ingredientes = resultado
    }
    
    func buttonClicked(sender: UIButton) {
        sender.selected = !sender.selected
    }
}
