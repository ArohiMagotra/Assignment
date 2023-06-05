//
//  MockData.swift
//  Assignment
//
//  Created by Arohi Magotra on 31/05/23.
//

import Foundation
import AVFoundation

struct MockData {
    
    var posts: [Post] = [
        Post(user: User(userName: "안녕 나 응애", userImage: "userImage", userAttributes: "1일전", userDescription: "165cm 53kg"),
             postImage: ["post_1","post_1"],
             caption: "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
             description: "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어? 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아??? 올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
             likesCount: "5",
             commentsCount: "5",
             tags: ["2023","TodayisMonday","Top", "Pops", "wow", "row"]),
        Post(user: User(userName: "안녕 나 응애", userImage: "userImage", userAttributes: "1일전", userDescription: "165cm 53kg"),
             postImage: nil,
             caption: nil,
             description: "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!",
             likesCount: "5",
             commentsCount: "5",
             tags: nil)
    ]
}


