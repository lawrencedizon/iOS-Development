//
//  ContentView.swift
//  VerySimpleSwiftUI
//
//  Created by Lawrence Dizon on 1/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            HStack() {
                Spacer()
                Text("Hello!")
                Spacer()
                Text("World!")
                Spacer()
            }
            
            Spacer()
        }

      
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
