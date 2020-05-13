//
//  ViewController.swift
//  SwipeToDelete
//
//  Created by TAR on 14/5/2563 BE.
//  Copyright © 2563 SourceDevZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var data=["A","B","C","D","E","F"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "reusedCell")
        if(cell==nil){
            cell = UITableViewCell(style: .default,reuseIdentifier: "resuedCell")
        }
        
        cell?.textLabel?.text = data[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return UITableViewCell.EditingStyle.delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == UITableViewCell.EditingStyle.delete){
            data.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    
}

