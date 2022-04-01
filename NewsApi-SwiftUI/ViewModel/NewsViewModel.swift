//
//  NewsViewModel.swift
//  NewsApi-SwiftUI
//
//  Created by Kaan İzgi on 30.03.2022.
//

import Foundation


class NewsViewModel:ObservableObject{
    
    @Published var newsList = [News]()
    let webService = WebServer()
    
    func getNews() {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=tr&apiKey=9a2315dccd3442aeb939f24d42e28f39")!
        WebServer().requestUrl(url: url,
                               expecting: NewsModel.self)
        { Result in
            switch Result {
            case.success(let data):
                DispatchQueue.main.async{
                    self.newsList = data.articles
                }
            case.failure(let error):
                print(error)
            }
        }
    }
}
