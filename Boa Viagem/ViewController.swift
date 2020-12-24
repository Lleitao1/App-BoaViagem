//
//  ViewController.swift
//  Boa Viagem
//
//  Created by Lucas Abdel Leitao on 24/12/20.
//  Copyright © 2020 Lucas Abdel Leitao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tabelaViagens: UITableView!
    let listaViagens: Array<String> = ["Rio de Janeiro", "Ceará", "São Paulo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        celula.textLabel?.text = listaViagens[indexPath.row]
        return celula
    }

}

