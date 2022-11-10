//
//  NetworkManager.swift
//  BookSearch
//
//  Created by You Jong Park on 2022/11/10.
//

import Foundation
import Alamofire

class NetworkManager {
    static let baseURL = "https://www.googleapis.com/books/v1/volumes"
    static let endOptions = "&fields=totalItems,items(volumeInfo/title,volumeInfo/authors,volumeInfo/publishedDate)"
//    ,volumeInfo/imageLinks)"


    // 검색한 책 목록 불러오기
    static func getBookInfos(search : String, completionHandler: @escaping (BookLists?) -> Void) {

        AF.request(baseURL + "?q=" + search + endOptions).response { response in

            
            if let data = response.data {
                
                let booklists = try? JSONDecoder().decode(BookLists.self, from: data)

                completionHandler(booklists)
               

            } else {
                completionHandler(nil)
            }
        }
    }
}


//https://www.googleapis.com/books/v1/volumes?q=having&fields=totalItems,items(volumeInfo/title,volumeInfo/authors,volumeInfo/publishedDate,volumeInfo/imageLinks)

