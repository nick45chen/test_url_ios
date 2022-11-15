//
//  ContentView.swift
//  test_url_connect
//
//  Created by Nick Chen on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Hello World!") {
                print("test");
                FugleMetaLoader().load(token: "demo", symbolId: "2330") { meta in
                    print("meta: \(meta)")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
