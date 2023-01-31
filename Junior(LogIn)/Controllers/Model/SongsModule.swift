//
//  SongsModule.swift
//  Junior(LogIn)
//
//  Created by Дмитрий Процак on 20.10.2022.
//

import Foundation

struct SongsModule: Decodable {
    let results: [Song]
}

struct Song : Decodable {
    let trackName: String?
}
