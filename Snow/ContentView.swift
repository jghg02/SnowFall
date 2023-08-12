//
//  ContentView.swift
//  Snow
//
//  Created by Josue German Hernandez Gonzalez on 11-08-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            SnowfallView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
