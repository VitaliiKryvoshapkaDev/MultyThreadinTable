//
//  MyTableViewCell.swift
//  MultyThreadinTable
//
//  Created by Vitalii Kryvoshapka on 24.10.2021.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!

    func configure(path: String){
        if let url = URL(string: path),
        let data = try? Data(contentsOf: url),
        let image = UIImage(data: data){
            photoImageView.image = image
        }
    }
}
