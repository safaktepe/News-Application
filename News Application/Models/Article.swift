//
//  Article.swift
//  News Application
//
//  Created by Mert Şafaktepe on 2.05.2022.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}


struct Article: Decodable {
    let title: String
    let description: String
}
