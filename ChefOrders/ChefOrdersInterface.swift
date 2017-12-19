//
//  ChefOrdersInterface.swift
//  ChefOrders
//
//  Created by ximin zhang on 2017/12/18.
//  Copyright © 2017年 ximin zhang. All rights reserved.
//

protocol ChefOrdersCrossDeviceInterface {
    
    func connectedDevicesChanged(manager : ConnectionManager, connectedDevices: [String])
    func textChanged(manager : ConnectionManager, text: String)
    
}
