//
//  Router.swift
//  NavStackExample
//
//  Created by Gustavo Kumasawa on 10/10/22.
//

import SwiftUI
import UIKit

final class Router: ObservableObject {
    @Published var path: [Routes] = [] {
        // UIKit animation is necessary due to SwiftUI lack of
        // animation when removing more than 1 screen from the stack
        willSet(newPath) {
            if newPath.count < path.count - 1 {
                let animation = CATransition()
                animation.isRemovedOnCompletion = true
                animation.type = .moveIn
                animation.subtype = .fromLeft
                animation.duration = 0.3
                animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
                UIApplication.shared.keyWindow!.layer.add(animation, forKey: nil)
            }
        }
    }
    
    enum Routes: Hashable {
        case MyView1
        case MyView2
        case MyView3(String, String, [String])
        case MyView4(String)
    }
}
