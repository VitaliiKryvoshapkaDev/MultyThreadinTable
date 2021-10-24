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
        
        //Add Global Queue userInitiated async
        DispatchQueue.global(qos: .userInitiated).async {
            [weak self] in
            if let url = URL(string: path),
               let data = try? Data(contentsOf: url),
               let image = UIImage(data: data){
                DispatchQueue.main.async {
                    //move to main queue
                    self?.photoImageView.image = image
                }
            }
        }
    }
}
