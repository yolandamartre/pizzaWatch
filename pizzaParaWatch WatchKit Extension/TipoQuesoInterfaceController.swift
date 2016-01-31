//
//  TipoQuesoInterfaceController.swift
//  pizzaParaWatch
//
//  Created by Yolanda Martínez on 1/10/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import WatchKit
import Foundation


class TipoQuesoInterfaceController: WKInterfaceController {
 
    var tamano : String = ""
    var tipoMasa : String = ""
    var tipoQueso : String = ""
    
    @IBOutlet var valorTipoQueso: WKInterfaceLabel!
    
    @IBAction func cambioTipoQueso(value: Float) {
        var tipoQ : String = ""
        
        switch value
        {
        case 0 : tipoQ = "Escoge tipo Queso"
        case 1 : tipoQ = "mozzarella"
        case 2 : tipoQ = "chedar"
        case 3: tipoQ = "parmesano"
        case 4: tipoQ = "Sin queso"

        default : tipoQ = "Escoge tipo Queso"
        }
        valorTipoQueso.setText(tipoQ)
        tipoQueso = tipoQ
    }
    
    @IBAction func botonSiguiente() {
        let datos = DatosPizza(tam: tamano, tipM: tipoMasa, tipQ: tipoQueso, ing: "")
        pushControllerWithName("ingredientes", context: datos)
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! DatosPizza
        tamano = c.tamano
        tipoMasa = c.tipoMasa
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
