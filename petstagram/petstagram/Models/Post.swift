//
//  Post.swift
//  petstagram
//
//  Created by Jess Lê on 12/21/22.
//

import Foundation

struct Post: Codable {
    var caption: String
    var createdAt: Date
    var photoUrl: URL
}

extension Post: Equatable {
    static func ==(lhs: Post, rhs: Post) -> Bool {
        return lhs.caption == rhs.caption &&
        lhs.createdAt == rhs.createdAt &&
        lhs.photoUrl == rhs.photoUrl
    }
}
