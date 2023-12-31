//
//  NewTweetViewModel.swift
//  TwitterClone
//
//  Created by bastien giat on 26/04/2021.
//

import SwiftUI
import Firebase

class UploadTweetViewModel: ObservableObject {
    
    func uploadTweet(caption: String) {
        guard let user = AuthViewModel.shared.user else { return }
        let docRef = COLLECTION_TWEETS.document()
        
        let data: [String: Any] = ["uid": user.id, "caption": caption, "fullname": user.fullname, "timestamp": Timestamp(date: Date()), "username": user.username, "profileImageUrl": user.profileImageUrl, "likes": 0, "id": docRef.documentID]
        
        docRef.setData(data) { _ in
            print("Successfully uploaded tweet")
        }
    }
}
