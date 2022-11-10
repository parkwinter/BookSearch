//
//  ViewController.swift
//  BookSearch
//
//  Created by You Jong Park on 2022/11/10.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager.getBookInfos(search: "having") { booklists in
            let items = booklists?.items ?? []
            
            if let result = booklists?.totalItems{
                print("검색 값의 총 책 수는 : \(result) ")
            }
            
        }
        
    }
}

