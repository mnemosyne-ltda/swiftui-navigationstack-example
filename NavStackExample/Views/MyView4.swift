//
//  MyView4.swift
//  NavStackExample
//
//  Created by Gustavo Kumasawa on 13/10/22.
//

import SwiftUI

struct MyView4: View {
    @EnvironmentObject private var router: Router
    let name: String
    
    var body: some View {
        VStack {
            Text(name)
                .padding()
            Button("Pop to root") {
                router.path.removeAll()
            }
        }
        .navigationBarTitle("MyView4")
    }
}
