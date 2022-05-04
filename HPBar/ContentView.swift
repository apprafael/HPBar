//
//  ContentView.swift
//  HPBar
//
//  Created by Rafael Almeida on 04/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var hpBarView = HPBarView(hpLevel: 150)
    
    var body: some View {
        VStack {
            hpBarView
            Button("hit") {
                hpBarView.hit(damage: 30)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
