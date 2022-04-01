//
//  Model.swift
//  NewsApi-SwiftUI
//
//  Created by Kaan İzgi on 30.03.2022.
//

import Foundation

struct NewsModel : Codable {
    var articles:[News]
}

struct News: Codable,Identifiable {
    let id = UUID()
    var author: String?
    var title: String?
    var urlToImage: String?
    var url:String?
    var publishedAt:String?
    var content: String?
    var description:String?
    var source:source
    var dateParsed:Date {
        (publishedAt?.dateParsed())!
    }
    
}
struct source:Codable{
    var id:String?
    var name:String?
}

