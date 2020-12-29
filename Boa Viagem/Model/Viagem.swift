//
//  Viagem.swift
//  Boa Viagem
//
//  Created by Lucas Abdel Leitao on 28/12/20.
//  Copyright © 2020 Lucas Abdel Leitao. All rights reserved.
//

import UIKit

class Viagem: NSObject {
    
    @objc let titulo: String
    let quantidadeDeDias: Int
    let preco: String
    let imgpath: String
    
    init( titulo: String, quantidadeDeDias: Int, preco: String, imgpath: String) {
        
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.imgpath = imgpath
    }

}
