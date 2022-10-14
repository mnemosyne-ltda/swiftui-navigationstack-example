//
//  MyView1.swift
//  NavStackExample
//
//  Created by Gustavo Kumasawa on 13/10/22.
//

import SwiftUI

struct MyView1: View {
    @EnvironmentObject private var router: Router
    
    var body: some View {
        Button("Go to MyView2") {
            router.path.append(Router.Routes.MyView2)
        }
        .navigationBarTitle("MyView1 (Root)")
    }
}
