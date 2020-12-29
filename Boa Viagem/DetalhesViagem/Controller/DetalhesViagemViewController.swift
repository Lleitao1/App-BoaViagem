//
//  DetalhesViagemViewController.swift
//  Boa Viagem
//
//  Created by Lucas Abdel Leitao on 29/12/20.
//  Copyright © 2020 Lucas Abdel Leitao. All rights reserved.
//

import UIKit

class DetalhesViagemViewController: UIViewController {

    @IBOutlet weak var labelTituloPacoteViagem: UILabel!
    @IBOutlet weak var imagemPacoteViagem: UIImageView!
    @IBOutlet weak var labelDescricaoPacoteViagem: UILabel!
    @IBOutlet weak var labelDataViagem: UILabel!
    @IBOutlet weak var labelPrecoViagem: UILabel!
    @IBOutlet weak var scrollPrincipal: UIScrollView!
    
    var pacoteSelecionado: PacoteViagem? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector (aumentarScroll(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
            if let pacote = pacoteSelecionado{
            self.imagemPacoteViagem.image = UIImage(named: pacote.viagem.imgpath)
            self.labelTituloPacoteViagem.text = pacote.viagem.titulo
            self.labelDescricaoPacoteViagem.text = pacote.descricao
            self.labelDataViagem.text = pacote.dataViagem
            self.labelPrecoViagem.text = pacote.viagem.preco
        }
    }
    
    @objc func aumentarScroll(notification:Notification){
        self.scrollPrincipal.contentSize = CGSize(width: self.scrollPrincipal.frame.width, height: self.scrollPrincipal.frame.height+320)
    }
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
