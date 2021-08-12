//
//  DeatilView.swift
//  TrendingNews
//
//  Created by Aryan Gupta on 12/08/21.
//

import SwiftUI
import WebKit
struct DeatilView: View {

    let url:String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DeatilView_Previews: PreviewProvider {
    static var previews: some View {
        DeatilView(url: "https://www.google.com")
    }
}


