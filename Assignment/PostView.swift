//
//  PostView.swift
//  Assignment
//
//  Created by Arohi Magotra on 31/05/23.
//

import SwiftUI

struct PostView: View {
    
    @State var post: Post
    let screenWidth: CGFloat
    
    var body: some View {
        VStack {
            
            //Post info.
            HStack {
                Image(post.user.userImage)
                    .resizable()
                    .cornerRadius(12.5)
                    .frame(width: 25, height: 25)
                    .padding(.leading, 10)
                VStack(alignment: .leading, spacing: .zero){
                    HStack {
                        Text(post.user.userName)
                            .font(Font.system(size: 14, weight: .semibold))
                        Image("TickIcon")
                            .resizable()
                            .cornerRadius(5)
                            .frame(width: 10, height: 10)
                        Text(post.user.userAttributes)
                            .font(Font.system(size: 10, weight: .regular))
                            .foregroundColor(Color.gray)
                    }
                    Text(post.user.userDescription)
                        .font(Font.system(size: 12, weight: .regular))
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
            .frame(height: 25)
            
            VStack(alignment: .leading, spacing: 15) {
                if let caption = post.caption {
                    Text(caption)
                        .font(Font.system(size: 14))
                }
                Text(post.description)
                    .font(Font.system(size: 14))
                    .foregroundColor(Color.gray)
            }
            .padding([.leading,.trailing], 10)
            //Image.
            if let tags = post.tags {
                TagView(tags: tags)
                    .padding([.leading,.trailing], 10)
            }
          
            if let postImages = post.postImage {
                TabView {
                    ForEach(postImages, id: \.self) { image in
                        ZStack(alignment: .topTrailing) {
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: screenWidth, height: screenWidth * 1.1)
                                .ignoresSafeArea()
                        }
                    }
                }
                .frame(width: screenWidth, height: screenWidth * 1.1)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
            
            //Change icons
            HStack {
                getDynamicViewWithCount(count: post.likesCount, imageName: "Heart")
                getDynamicViewWithCount(count: post.commentsCount, imageName: "Comment")
                getDynamicViewWithCount(count: nil, imageName: "Bookmark")
            }
            .frame(height: 20)
            .frame(maxWidth: screenWidth, maxHeight: 60, alignment: .leading)
            
            Divider()
        }
    }
    
    @ViewBuilder
    func getDynamicViewWithCount(count: String?, imageName: String) -> some View {
        HStack(spacing: 5) {
            Image(imageName)
            if let count = count {
                Text(count)
                    .font(Font.system(size: 12))
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            PostView(post: MockData().posts.first!, screenWidth: geometry.size.width)
        }
    }
}
