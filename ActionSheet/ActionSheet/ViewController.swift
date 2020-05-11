//
//  ViewController.swift
//  ActionSheet
//
//  Created by TAR on 11/5/2563 BE.
//  Copyright © 2563 SourceDevZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "Information",message: "what's your food favorite?",preferredStyle: UIAlertController.Style.actionSheet)
        
        let spaghetti = UIAlertAction(title:"Spaghetti",style:UIAlertAction.Style.default,handler: {(alerts:UIAlertAction)-> Void in print("I like spaghetti")})
        
        let pizza = UIAlertAction(title:"Pizza",style: UIAlertAction.Style.destructive,handler: {(alerts:UIAlertAction)-> Void in print("I like pizza")})
        
        let nothing = UIAlertAction(title:"Nothing",style:UIAlertAction.Style.cancel,handler: {(alerts:UIAlertAction)-> Void in print("I don't like both")})
        
        alert.addAction(spaghetti)
        alert.addAction(pizza)
        alert.addAction(nothing)
        
        self.present(alert,animated: true,completion: nil)
    }
    
}

