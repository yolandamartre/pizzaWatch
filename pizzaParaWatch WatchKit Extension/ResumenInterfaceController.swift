//
//  ResumenInterfaceController.swift
//  pizzaParaWatch
//
//  Created by Yolanda Martínez on 1/10/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import WatchKit
import Foundation


class ResumenInterfaceController: WKInterfaceController {
    @IBOutlet var valorResumen: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        // recupero lo que fue puesto en el contexto
        let c = context as! DatosPizza
        valorResumen.setText("tamaño \(c.tamano) \n tipo de masa \(c.tipoMasa) \n tipo de queso \(c.tipoQueso) \n ingredientes \(c.ingredientes)")
        
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
