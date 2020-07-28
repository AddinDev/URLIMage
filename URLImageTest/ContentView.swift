//
//  ContentView.swift
//  URLImageTest
//
//  Created by addjn on 28/07/20.
//  Copyright © 2020 pstw._. All rights reserved.
//

import SwiftUI
import URLImage

let url = URL(string: "https://avatars3.githubusercontent.com/u/54827832?s=400&u=6aad6f823e3e57a5ecd4b7eb2ed4de74db45b695&v=4")

struct ContentView: View {
    var body: some View {
       
        URLImage(url!) { proxy in
            proxy.image
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fill)
            .cornerRadius(15)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
