//
//  AlbumMododel.swift
//  Junior(LogIn)
//
//  Created by Дмитрий Процак on 19.10.2022.
//

import Foundation

struct AlbumModel: Decodable, Equatable {
    let results: [Album]
}

//прогнали JSON DECODER и взяли оттуда то что надо(желателтно писать одинаково)
struct Album: Decodable, Equatable {
    let artistName: String
    let collectionName: String
    let artworkUrl100: String?
    let trackCount: Int
    let releaseDate: String
    let collectionId: Int
}
