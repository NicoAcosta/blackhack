//
//  strategyEnum.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 27/10/2020.
//

import Foundation

enum Strategy {
    
    case hit
    case double
    case split
    case stand
    case error
    
    func string() -> String {
        
        switch self {
        case .stand:
            return "Stand"
        case .hit:
            return "Hit"
        case .double:
            return "Double"
        case .split:
            return "Split"
        case .error:
            return "Error"
        }
        
    }
}
