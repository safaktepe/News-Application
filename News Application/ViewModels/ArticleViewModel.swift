//
//  ArticleViewModel.swift
//  News Application
//
//  Created by Mert Şafaktepe on 2.05.2022.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numbersOfSection: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
    
}

struct ArticleViewModel{
    private let article: Article
}


extension ArticleViewModel {
    init(_ article: Article){
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
}

extension ArticleViewModel {
    var description: String {
        return self.article.description
    }
}
