//
//  TipoMasaInterfaceController.swift
//  pizzaParaWatch
//
//  Created by Yolanda Martínez on 1/10/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import WatchKit
import Foundation

class TipoMasaInterfaceController: WKInterfaceController {
    
        var tamano : String = ""
        var tipoMasa : String = ""

    @IBOutlet var valorTipoMasa: WKInterfaceLabel!
    
    @IBAction func cambiaTipoMasa(value: Float) {
        
        switch value
        {
        case 0 :
            tipoMasa = "delgada"
        case 1 : tipoMasa = "crujiente"
        case 2: tipoMasa = "gruesa"
        default : tipoMasa = "Escoge tipo Masa"
        }
        
    valorTipoMasa.setText(tipoMasa)
        
    }
    
    @IBAction func botonSiguiente() {
        let datos = DatosPizza(tam: tamano, tipM: tipoMasa, tipQ: "", ing: "")
        pushControllerWithName("tipoQueso", context: datos)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! DatosPizza
        tamano = c.tamano
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
