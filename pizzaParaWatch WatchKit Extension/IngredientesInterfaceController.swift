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
    var switchPeperoni : Bool = false
    var switchJamon : Bool = false
    var switchPavo : Bool = false
    var switchSalchicha : Bool = false
    var switchAceituna : Bool = false
    var switchPimiento : Bool = false
    
    @IBOutlet var swPeperoni: WKInterfaceSwitch!
    
    @IBOutlet var swJamon: WKInterfaceSwitch!
    
    @IBOutlet var swPavo: WKInterfaceSwitch!
    
    @IBOutlet var swSalchicha: WKInterfaceSwitch!
    
    @IBOutlet var swAceituna: WKInterfaceSwitch!
    
    @IBOutlet var swPimiento: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! DatosPizza
        tamano = c.tamano
        tipoMasa = c.tipoMasa
        tipoQueso = c.tipoQueso
        swPeperoni.setOn(false)
        swJamon.setOn(false)
        swPavo.setOn(false)
        swSalchicha.setOn(false)
        swAceituna.setOn(false)
        swPimiento.setOn(false)
    }

    @IBAction func botonSiguiente() {
        if switchPeperoni == true
        {
            ingredientes += "Peperoni\n"
        }
        if switchJamon == true
        {
            ingredientes += "Jamon\n"
        }
        if switchPavo == true
        {
            ingredientes += "Pavo\n"
        }
        if switchSalchicha == true
        {
            ingredientes += "Salchicha\n"
        }
        if switchAceituna == true
        {
            ingredientes += "Aceituna\n"
        }
        if switchPimiento == true
        {
            ingredientes += "Pimiento\n"
        }
        
        
        let datos = DatosPizza(tam: tamano, tipM: tipoMasa, tipQ: tipoQueso, ing: ingredientes)
        pushControllerWithName("resumen", context: datos)
        
    }
    
    @IBAction func movioSwPeperoni(value: Bool) {
        switchPeperoni = !switchPeperoni
    }
    
    @IBAction func movioSwJamon(value: Bool) {
        switchJamon = !switchJamon
    }
    
    @IBAction func movioSwPavo(value: Bool) {
        switchPavo = !switchPavo
    }
    
    @IBAction func movioSwSalchicha(value: Bool) {
        switchSalchicha = !switchSalchicha
    }
    
    @IBAction func movioSwAceituna(value: Bool) {
        switchAceituna = !switchAceituna
    }
    
    @IBAction func movioSwPimiento(value: Bool) {
        switchPimiento = !switchPimiento
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
