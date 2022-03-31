//
//  DetailView.swift
//  NewsApi-SwiftUI
//
//  Created by Kaan İzgi on 31.03.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct DetailView: View {
    let data:News
    var body: some View {
        VStack {
            WebImage(url: URL(string: data.urlToImage ?? ""))
                .resizable()
                .frame(height: 300)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let news = News(author: "sfdsdf", title: "Son Dakika: Rusya'dan flaş ateşkes kararı! Yarın saat 10:00'dan itibaren...", urlToImage: "https://imgrosetta.mynet.com.tr/file/13852105/13852105-700x400.jpg", url: "https://www.mynet.com/rusya-dan-flas-ateskes-karari-yarin-saat-10-00-dan-itibaren-110106935974", publishedAt: "11", content: "sdffd", description: "Son dakika haberi: Rusya-Ukrayna savaşıyla ilgili bir son dakika ateşkes açıklaması geldi. Rusya, yarın Moskova saatiyle 10.00'dan itibaren yalnızca insani amaçlarla ateşkes ilan ettiğini duyurarak, sivillerin ve yabancı vatandaşların Mariupol'den Zaporijya'y…", source: source(id: "sfdfsd", name: "dsfsfd"))
        DetailView(data: news)
    }
}
