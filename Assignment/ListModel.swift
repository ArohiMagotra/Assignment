//
//  ListModel.swift
//  Assignment
//
//  Created by Arohi Magotra on 31/05/23.
//

import Foundation
import UIKit

struct Post: Identifiable {
    let id = UUID()
    let user: User
    let postImage: [String]?
    let caption: String?
    let description: String
    let likesCount: String
    let commentsCount: String
    let hasLiked: Bool = false
    let hasBookmarked: Bool = false
    let tags: [String]?
}

struct User: Identifiable {
    var id = UUID()
    let userName: String
    let userImage: String
    let userAttributes: String
    let userDescription: String
}
