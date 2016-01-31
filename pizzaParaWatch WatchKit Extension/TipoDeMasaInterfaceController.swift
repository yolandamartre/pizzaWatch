//
//  TipoDeMasaInterfaceController.swift
//  pizzaParaWatch
//
//  Created by Yolanda Martínez on 1/30/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import WatchKit
import Foundation


class TipoDeMasaInterfaceController: WKInterfaceController {
    
    var tamano : String = ""
    var tipoMasa : String = ""

    @IBAction func botonSlider(value: Float) {
        switch value
        {
        case 0: tipoMasa = "Escoge tipo Masa"
        case 1 :
            tipoMasa = "delgada"
        case 2 : tipoMasa = "crujiente"
        case 3: tipoMasa = "gruesa"
        default : tipoMasa = "Escoge tipo Masa"
        }
        
        lbTipoMasa.setText(tipoMasa)
    }
    
    @IBOutlet var lbTipoMasa: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! DatosPizza
        tamano = c.tamano
    }

    @IBAction func botonSiguiente() {
        let datos = DatosPizza(tam: tamano, tipM: tipoMasa, tipQ: "", ing: "")
        pushControllerWithName("tipoQueso", context: datos)
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
