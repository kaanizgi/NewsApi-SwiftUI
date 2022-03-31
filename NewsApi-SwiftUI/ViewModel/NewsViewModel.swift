//
//  NewsViewModel.swift
//  NewsApi-SwiftUI
//
//  Created by Kaan İzgi on 30.03.2022.
//

import Foundation


class NewsViewModel:ObservableObject {
    
    @Published var NewsList = [News]()
    let webService = Network()
    let url =  URL(string:"https://newsapi.org/v2/top-headlines?country=gb&apiKey=9a2315dccd3442aeb939f24d42e28f39")!
    
    func getNews() async {
        do {
            let news = try await webService.getNews(url: url)
            DispatchQueue.main.async {
                self.NewsList = news.articles
            }
        }catch {
            print("error")
        }
    }

}
