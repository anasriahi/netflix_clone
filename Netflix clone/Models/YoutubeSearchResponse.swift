//
//  YoutubeSearchResponse.swift
//  Netflix clone
//
//  Created by MAC-Anas on 5/7/2023.
//

import Foundation



struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}


