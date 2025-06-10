//
//  ContentView.swift
//  HAXOR NEWS
//
//  Created by Hiba Abdulla on 6/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("HAXOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchAPI()
        }
    }
}

#Preview {
    ContentView()
}
