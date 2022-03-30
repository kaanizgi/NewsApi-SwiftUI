//
//  Network.swift
//  NewsApi-SwiftUI
//
//  Created by Kaan İzgi on 30.03.2022.
//

import Foundation


class Network {
    
    func getNews(url:URL) async throws -> NewsModel {
            let (data,response) = try await URLSession.shared.data(from: url)
            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
            let news = try? JSONDecoder().decode(NewsModel.self, from: data)
            return news!
    }
}
