//
//  WaiterViewController.swift
//  ChefOrders
//
//  Created by ximin zhang on 2017/12/18.
//  Copyright © 2017年 ximin zhang. All rights reserved.
//

import UIKit

class WaiterViewController: UIViewController {

    @IBOutlet weak var connectionStatusTextLabel: UILabel!
    
    let connectionManager = ConnectionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SendTextA(_ sender: Any) {
        
    }
    @IBAction func SendTextB(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
