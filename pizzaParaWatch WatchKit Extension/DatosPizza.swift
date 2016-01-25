//
//  DatosPizza.swift
//  pizzaParaWatch
//
//  Created by Yolanda Martínez on 1/10/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import Foundation

class DatosPizza: NSObject {
    
    var tamano : String = ""
    var tipoMasa : String = ""
    var tipoQueso : String = ""
    var ingredientes : String = ""
    
    init(tam: String, tipM: String, tipQ: String, ing : String)
    {
        tamano = tam
        tipoMasa = tipM
        tipoQueso = tipQ
        ingredientes = ing
    }
}
