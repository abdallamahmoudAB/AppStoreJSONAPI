//
//  AppGroup.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 16/02/2022.
//

import Foundation

struct AppGroup: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let id, name, artistName, artworkUrl100: String
}
