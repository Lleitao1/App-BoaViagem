//
//  TableViewCell.swift
//  Boa Viagem
//
//  Created by Lucas Abdel Leitao on 28/12/20.
//  Copyright © 2020 Lucas Abdel Leitao. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelQuantidadeDeDias: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    @IBOutlet weak var imagemViagem: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
