//
//  ContentView.swift
//  NewsApi-SwiftUI
//
//  Created by Kaan İzgi on 30.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var ViewModel = NewsViewModel()
    
    var body: some View {
        NavigationView {
            List(ViewModel.newsList) {item in
                NewsScreen(data: item)
                    .listRowInsets(EdgeInsets())
            }.listStyle(.plain)
                .navigationTitle("News")
                .navigationViewStyle(.stack)
                .navigationBarTitleDisplayMode(.inline)
        }.onAppear {
            ViewModel.getNews()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
