//
//  ChefViewController.swift
//  ChefOrders
//
//  Created by ximin zhang on 2017/12/18.
//  Copyright © 2017年 ximin zhang. All rights reserved.
//

import UIKit

class ChefViewController: UIViewController, ChefOrdersCrossDeviceInterface{
    
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var StatusLabel: UILabel!
    @IBOutlet weak var ConnectedDevicesLabel: UILabel!
    
    let connectionManager = ConnectionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        connectionManager.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func connectedDevicesChanged(manager: ConnectionManager, connectedDevices: [String]) {
        //do nothing
        OperationQueue.main.addOperation{
            self.ConnectedDevicesLabel.text = connectedDevices.joined(separator: ",")
        }
    }
    
    func textChanged(manager: ConnectionManager, text: String) {
        OperationQueue.main.addOperation{
            self.TextLabel.text = text
        }
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
