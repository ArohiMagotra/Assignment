//
//  ListView.swift
//  Assignment
//
//  Created by Arohi Magotra on 31/05/23.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(MockData().posts) {
                    PostView(post: $0, screenWidth: UIScreen.main.bounds.size.width)
                }
            }
        }
    }
}
