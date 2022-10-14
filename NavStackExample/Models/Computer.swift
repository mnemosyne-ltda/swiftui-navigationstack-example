//
//  Computer.swift
//  NavStackExample
//
//  Created by Gustavo Kumasawa on 07/10/22.
//

import Foundation

struct Computer: Hashable {
    var name: String
    var brand: String
    var processor: String
    var nPorts: Int
    
//    static func == (lhs: Computer, rhs: Computer) -> Bool {
//        return lhs.name == rhs.name && lhs.brand == rhs.brand && lhs.processor == rhs.processor && lhs.nPorts == rhs.nPorts
//    }
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//        hasher.combine(brand)
//        hasher.combine(processor)
//        hasher.combine(nPorts)
//    }
}
