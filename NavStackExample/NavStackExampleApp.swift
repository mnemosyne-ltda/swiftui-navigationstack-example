//
//  NavStackExampleApp.swift
//  NavStackExample
//
//  Created by Gustavo Kumasawa on 07/10/22.
//

import SwiftUI

@main
struct NavStackExampleApp: App {
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                MyView1()
                    .navigationDestination(for: Router.Routes.self) { route in
                        switch route {
                        case .MyView1:
                            MyView1()
                        case .MyView2:
                            MyView2()
                        case .MyView3(let name, let observation, let list):
                            MyView3(name: name, observation: observation, list: list)
                        case .MyView4(let name):
                            MyView4(name: name)
                        }
                    }
            }
            .environmentObject(router)
        }
    }
}
