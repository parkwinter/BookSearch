//
//  TitleResponse.swift
//  BookSearch
//
//  Created by You Jong Park on 2022/11/10.
//

// MARK: - 책 목록에는 책의 커버 이미지, 제목, 저자, 출판일 , 검색된 책의 총 수량 을 볼 수 있다.

//https://www.googleapis.com/books/v1/volumes?q=having&fields=totalItems,items(volumeInfo/title,volumeInfo/authors,volumeInfo/publishedDate,volumeInfo/imageLinks)

// https://app.quicktype.io/
// json -> swift 바꿔주는 사이트


import Foundation

// MARK: - TitleResponse
struct TitleResponse: Codable {
    let totalItems: Int
    let items: [Item]
}

// MARK: - Item
struct Item: Codable {
    let volumeInfo: VolumeInfo
}

// MARK: - VolumeInfo
struct VolumeInfo: Codable {
    let title: String
    let authors: [String]
    let publishedDate: String
    let imageLinks: ImageLinks
}

// MARK: - ImageLinks
struct ImageLinks: Codable {
    let smallThumbnail, thumbnail: String
}
        
        

/*
{
    "totalItems": 569,
    "items": [
        {
            "volumeInfo": {
                "title": "더 해빙(The Having)(50만부 기념 리커버 에디션)",
                "authors": [
                    "이서윤"
                ],
                "publishedDate": "2020-03-01",
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=G1nZDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=G1nZDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                }
            }
        },
     
 */

