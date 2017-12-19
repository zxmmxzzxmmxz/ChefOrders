//
//  ConnectionService.swift
//  ChefOrders
//
//  Created by ximin zhang on 2017/12/18.
//  Copyright © 2017年 ximin zhang. All rights reserved.
//

import Foundation
import MultipeerConnectivity

class ConnectionAdvertiser : NSObject{
    private let serviceName = "Chef-Orders";
    private let myPeerID = MCPeerID(displayName : UIDevice.current.name)
    private let serviceAdvertiser : MCNearbyServiceAdvertiser
    
    override init() {
        self.serviceAdvertiser = MCNearbyServiceAdvertiser(peer: myPeerID,discoveryInfo: nil, serviceType: serviceName);
        super.init();
        self.serviceAdvertiser.delegate = self;
        self.serviceAdvertiser.startAdvertisingPeer();
    }
    
    deinit {
        self.serviceAdvertiser.stopAdvertisingPeer();
    }
}


extension ConnectionAdvertiser : MCNearbyServiceAdvertiserDelegate{
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: Error) {
        NSLog("%@", "didNotStartAdvertisingPeer: \(error)")
    }
    
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        NSLog("%@", "didReceiveInvitationFromPeer \(peerID)")
    }
    
    
}
