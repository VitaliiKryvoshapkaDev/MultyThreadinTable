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
    
    
    var images:[String] = ["https://yablyk.com/wp-content/uploads/2021/10/macbook-pro-2021-inches-14-16-review.jpg","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp16-spacegray-select-202110_GEO_RU?wid=904&hei=840&fmt=jpeg&qlt=80&.v=1633657685000", "https://prostomac.com/wp-content/uploads/2021/10/macbook-pro-2021-release-2-.jpg", "https://www.ixbt.com/img/n1/news/2021/9/1/Снимок%20экрана%202021-10-18%20в%2020.48.56%201_large.png"]
    
    
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

        return cell
    }
}
