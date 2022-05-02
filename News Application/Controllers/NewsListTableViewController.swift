//
//  NewsListTableViewController.swift
//  News Application
//
//  Created by Mert Şafaktepe on 1.05.2022.
//

import Foundation


import UIKit

class NewsListTableViewController : UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    
    private func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/everything?q=apple&from=2022-05-01&to=2022-05-01&sortBy=popularity&apiKey=f85840ca80884901aa13414ea9c2a1c3")!
        
        Webservices().getArticles(url: url) { _ in
            
        }
        
        
    }
    
}
