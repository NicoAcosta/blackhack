//
//  publicFunctions.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 04/11/2020.
//

import Foundation

extension Game {
    
    var userStatus : Status {
        return user.status
    }
    
    var dealerStatus : Status {
        return dealer.status
    }
    
    var dealerData : Data {
        return dealer.data
    }
    
    var userData : Data {
        return user.data
    }
    
}
