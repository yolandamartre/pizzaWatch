//
//  InterfaceController.swift
//  pizzaParaWatch WatchKit Extension
//
//  Created by Yolanda Martínez on 1/10/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    @IBOutlet var lbTamano: WKInterfaceLabel!
    var tamano : String = ""

    @IBAction func cambiaValorTamano(value: Float)
    {
        var valor : String
        switch value
        {
        case 1: valor = "Chica"
        case 2: valor = "Mediana"
        case 3: valor = "Grande"
        default: valor = "Elige un Tamaño"
        }
        tamano = valor
        lbTamano.setText(valor)
    }
    
    @IBAction func botonSiguiente() {
        let datos = DatosPizza(tam: tamano, tipM: "", tipQ: "", ing: "")
        pushControllerWithName("tipoMasa", context: datos)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
