//
//  MyView3.swift
//  NavStackExample
//
//  Created by Gustavo Kumasawa on 13/10/22.
//

import SwiftUI

struct MyView3: View {
    @EnvironmentObject private var router: Router
    let name: String
    let observation: String
    let list: [String]
    
    var body: some View {
        VStack {
            Text("Title: \(name)")
                .bold()
            if observation != "" {
                Text("Observation: \(observation)")
            }
            
            ForEach(list, id: \.self) { item in
                Text(item)
            }
            .padding()
            
            Button("Go to MyView4") {
                router.path.append(Router.Routes.MyView4(name))
            }
        }
        .navigationBarTitle("MyView3")
    }
}
