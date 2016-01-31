//
//  IngredientesInterfaceController.swift
//  pizzaParaWatch
//
//  Created by Yolanda Martínez on 1/10/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    
    var tamano : String = ""
    var tipoMasa : String = ""
    var tipoQueso : String = ""
    var ingredientes : String = ""

    @IBOutlet var switchPeperoni: WKInterfaceSwitch!
    @IBOutlet var switchJamon: WKInterfaceSwitch!
    @IBOutlet var switchPavo: WKInterfaceSwitch!
    @IBOutlet var switchSalchicha: WKInterfaceSwitch!
    @IBOutlet var switchAceituna: WKInterfaceSwitch!
    @IBOutlet var switchPimiento: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! DatosPizza
        tamano = c.tamano
        tipoMasa = c.tipoMasa
        tipoQueso = c.tipoQueso
    }

    @IBAction func botonSiguiente() {
        if switchPeperoni == true
        {
            ingredientes += "Peperoni"
        }
        if switchJamon == true
        {
            ingredientes += "Jamon"
        }

        
        
        let datos = DatosPizza(tam: tamano, tipM: tipoMasa, tipQ: tipoQueso, ing: ingredientes)
        pushControllerWithName("ingredientes", context: datos)
        
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
