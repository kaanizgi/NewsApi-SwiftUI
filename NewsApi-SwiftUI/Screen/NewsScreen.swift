//
//  NewsScreen.swift
//  NewsApi-SwiftUI
//
//  Created by Kaan İzgi on 31.03.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsScreen: View {
    let data:News
    var body: some View {
        VStack(alignment:.leading,spacing: 8) {
            WebImage(url: URL(string: data.urlToImage ?? ""))
                .resizable()
                .frame(height: 250)
                .frame(maxWidth:.infinity)
            Text(data.title ?? "")
                .font(.body)
                .bold()
                .multilineTextAlignment(.leading)
                .lineLimit(3)
                .padding(.horizontal)
            Text(data.description ?? "")
                .font(.body)
                .multilineTextAlignment(.leading)
                .lineLimit(3)
                .padding(.horizontal)
                .foregroundColor(.gray)
                .padding(.bottom,15)
            Text(data.dateParsed,format: .dateTime.year().month().day())
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.horizontal)
                .padding(.bottom)
                
        }
    }
}

struct NewsScreen_Previews: PreviewProvider {
    static var previews: some View {
        let news = News(author: "sfdsdf", title: "", urlToImage: "", url: "", publishedAt: "", content: "sdffd", description: "", source: source(id: "", name: ""))
        NewsScreen(data: news)
    }
}
