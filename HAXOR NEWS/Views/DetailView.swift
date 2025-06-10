//
//  DetailView.swift
//  HAXOR NEWS
//
//  Created by Hiba Abdulla on 6/9/25.
//

import SwiftUI

struct DetailView: View {
    let url: String?

    var body: some View {
        WebView(urlSrting: url )
    }
}

#Preview {
    DetailView(url: "")
}


