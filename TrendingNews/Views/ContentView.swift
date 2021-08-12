//
//  ContentView.swift
//  TrendingNews
//
//  Created by Aryan Gupta on 12/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
              NavigationLink(destination: DeatilView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("Trending News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



