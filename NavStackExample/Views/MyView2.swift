//
//  MyView2.swift
//  NavStackExample
//
//  Created by Gustavo Kumasawa on 13/10/22.
//

import SwiftUI

struct MyView2: View {
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            Button("Go to MyView3") {
                router.path.append(Router.Routes.MyView3(
                    "My Title",
                    "My Observation",
                    [
                        "Item A",
                        "Item X",
                        "Item C",
                        "Item K"
                    ]
                ))
            }
        }
        .navigationBarTitle("MyView2")
    }
}
