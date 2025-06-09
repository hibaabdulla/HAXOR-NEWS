//
//  ContentView.swift
//  HAXOR NEWS
//
//  Created by Hiba Abdulla on 6/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(posts) { post in Text(post.title)
            
        }
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [Post(id: "1", title: "Hi"),
             Post(id: "2", title: "Hlo"),
             Post(id: "3", title: "Koo")]

#Preview {
    ContentView()
}
