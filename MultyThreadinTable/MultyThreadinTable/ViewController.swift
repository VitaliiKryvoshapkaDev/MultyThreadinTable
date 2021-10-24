//
//  ViewController.swift
//  MultyThreadinTable
//
//  Created by Vitalii Kryvoshapka on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            //Add Data source
            tableView.delegate = self
            tableView.dataSource = self
            
            //Register Cell
            let nib = UINib(nibName: "MyTableViewCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: "MyCellId")
        }
    }
    
    
    var images:[String] = ["https://wallpaperaccess.com/full/766763.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6VcHNvZz-xv22BMZ-_k_JGCZvasrfZTxbdFXkgOJhY6EfZtWt1Am5Rm-umNJT5r8jzCQ&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_IXI4mgLI-JJUtBbwipTuy5BWjhWK3pTli_9UusI8sC00ov4SS_PhO9R_4yJINPrnVLw&usqp=CAU", "https://wallpaperaccess.com/full/733648.jpg"]
    
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //
    //        DispatchQueue.main.sync {
    //            print("Hello")
    //        }
    //    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return rows
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCellId", for: indexPath) as! MyTableViewCell
        
        //configure cell
        cell.configure(path: images[indexPath.row])

        return cell
    }
}
